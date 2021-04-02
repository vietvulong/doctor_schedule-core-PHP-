var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
var months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Set", "Oct", "Nov", "Dec"]

var w_code = ""
var d_code = ""
var s_code = ""
var ss_code = ""

var startDateArray = [];

$(document).ready(function(){


	$(".previous").click(function(){
        var doctor_id = $(this).attr("data-id");
        var old_start_date = startDateArray[doctor_id];
        var new_start_date = new Date(old_start_date.setDate(old_start_date.getDate() - 6));
        init(doctor_id,new_start_date); 
    });

	$(".next").click(function(){
        var doctor_id = $(this).attr("data-id");
        var old_start_date = startDateArray[doctor_id];
        var new_start_date = new Date(old_start_date.setDate(old_start_date.getDate() + 6));
        init(doctor_id,new_start_date); 
    });

});

function formatDate(date){

    m_year = date.getFullYear();
    m_month = date.getMonth()+1;
    m_date = date.getDate()

    return m_year+'-'+(m_month<10?'0'+m_month:m_month)+'-'+(m_date<10?'0'+m_date:m_date);
}

function init(doctor_id,curDate){

	$(".dayofweek-"+doctor_id).html("")
    $(".eachday-"+doctor_id).html("")
    $(".calendar_content-"+doctor_id).html("")
    
    var end_date;
    start_date = formatDate(curDate);
    start_day = curDate.getDay();

    var numberOfDaysToAdd = 5;
    end_date = formatDate(new Date(curDate.setDate(curDate.getDate()+numberOfDaysToAdd)));

    $.ajax({
        url: 'fetchdata.php',
        type: 'POST',
        data: {'doctor_id': doctor_id, 'start_date':start_date, 'end_date':end_date },
        dataType: 'json',
        success: function(data) {

            var max_length = data['max']
            var time = [];
            var dataTimeObj = {};

            if(data['res'] != "empty"){

                for (x in data['res']){
                    var datekey = x.split('-')[2];
                    for(i=0;i<data['res'][x].length;i++){
                        
                        time.push(data['res'][x][i].split(' ')[0]);
                    }
                    dataTimeObj[datekey] = time;
                    time = [];
                }
            }

            if(Object.keys(dataTimeObj).length > 0){

                for(let i = start_day; i <= start_day + numberOfDaysToAdd; i++){
                    w_code += "<div>" + days[i%7] + "</div>";

                    var itemDate = new Date(new Date(start_date).setDate(new Date(start_date).getDate()+(i-start_day)));
                
                    d_code += "<div>" + months[itemDate.getMonth()] + " " + itemDate.getDate() + "</div>";
                
                    for(let j = 0;j<max_length;j++){
                        var item = Object.values(dataTimeObj)[i-start_day][j];
                        if(item == "-"){
                            ss_code += "<div>-</div>"
                        }
                        else{
                            ss_code += "<div class='active'>" + Object.values(dataTimeObj)[i-start_day][j] + "</div>";
                        }
                    }
                    
                    s_code += "<div>" + ss_code + "</div>"
                    ss_code = ""
                }
            }else{
                for(let i = start_day; i <= start_day + numberOfDaysToAdd; i++){
                    w_code += "<div>" + days[i%7] + "</div>"
              
                    d_code += "<div>" + months[new Date(start_date).getMonth()] + " " + new Date(new Date(start_date).setDate(new Date(start_date).getDate()+(i-start_day))).getDate() + "</div>"
                    for(let j = 0; j < 4; j++){
                        ss_code += "<div>-</div>"
                    }

                    s_code += "<div>" + ss_code + "</div>"
                    ss_code = ""
                }
            }

			$(".dayofweek-"+doctor_id).html(w_code)
            $(".eachday-"+doctor_id).html(d_code)
            $(".calendar_content-"+doctor_id).html(s_code)
            w_code = ""
            d_code = ""
            s_code = ""
        }
    })
}
/* ****************
 *  일정 편집
 * ************** */
var editEvent = function (event, element, view) {
    $('.popover.fade.top').remove();
    $(element).popover("hide");

    if (event.allDay === true) {
        editAllDay.prop('checked', true);
    } else {
        editAllDay.prop('checked', false);
    }

    if (event.end === null) {
        event.end = event.start;
    }

    if (event.allDay === true && event.end !== event.start) {
        editEnd.val(moment(event.end).subtract(1, 'days').format('YYYY-MM-DD HH:mm'))
    } else {
        editEnd.val(event.end.format('YYYY-MM-DD HH:mm'));
    }

    modalTitle.html('일정 수정');
    editTitle.val(event.title);
    editStart.val(event.start.format('YYYY-MM-DD HH:mm'));
    editType.val(event.type);
    editDesc.val(event.description);
    editColor.val(event.backgroundColor).css('color', event.backgroundColor);

    addBtnContainer.hide();
    modifyBtnContainer.show();
    eventModal.modal('show');

    //업데이트 버튼 클릭시
    $('#updateEvent').unbind();
    $('#updateEvent').on('click', function () {

        if (editStart.val() > editEnd.val()) {
            alert('끝나는 날짜가 앞설 수 없습니다.');
            return false;
        }

        if (editTitle.val() === '') {
            alert('일정명은 필수입니다.')
            return false;
        }
        var statusAllDay;
        var startDate;
        var endDate;
        var displayDate;

        if (editAllDay.is(':checked')) {
            statusAllDay = true;
            startDate = moment(editStart.val()).format('YYYY-MM-DD');
            endDate = moment(editEnd.val()).format('YYYY-MM-DD');
            displayDate = moment(editEnd.val()).add(1, 'days').format('YYYY-MM-DD');
        } else {
            statusAllDay = false;
            startDate = editStart.val();
            endDate = editEnd.val();
            displayDate = endDate;
        }

        eventModal.modal('hide');
        
        var eventup = {
        		_id:event._id,
        		allDay: statusAllDay,
		        title: editTitle.val(),
		        start: startDate,
		        end: displayDate,
		        type: editType.val(),
		        backgroundColor: editColor.val(),
		        description: editDesc.val(),
		        username: event.username,
		        }
        console.log(eventup)
        $("#calendar").fullCalendar('updateEvent', event);
        var jsonupdate = JSON.stringify(eventup);
        //일정 업데이트
        $.ajax({
            type: "get",
            url: "/NHMP/calup",
            data: {
            	jsonupdate
            },
            success: function (response) {
                alert('수정되었습니다.');
                location.reload();
            }
        });
    });

    // 삭제버튼
    $('#deleteEvent').on('click', function () {
        $('#deleteEvent').unbind();
        $("#calendar").fullCalendar('removeEvents', [event._id]);
        eventModal.modal('hide');
        
        var eventup = {
        		_id:event._id,
        }
        
        var jsondelete = JSON.stringify(eventup);
        
        //삭제시
        $.ajax({
            type: "get",
            url: "/NHMP/caldelete",
            data: {
            	jsondelete
            },
            success: function (response) {
                alert('삭제되었습니다.');
                location.reload();
            }
        });
    });
};
$('#x-input').on('input', checkCoordinate);
$('#buttons-area').on('click', defineYcordValue);
$('#check-btn').on('click', submitData);
$('#radius-input').on('click', (event) => {
    if ($(event.target).is('input[name="radius"]')) {
        $('#radius-error').addClass('hidden');
        $('#graph-path').removeClass('hidden');
        redraw_graphic();
    }
})

$('#graphic').on('click', checkHit);

function checkCoordinate() {
    let val = this.value;
    if (val !== '' && !isNaN(Number(val))) {
        if (val <-5 || val > 3) {
            notValid(this);
        }
        else {
            valid(this);
        }
    }
    else {
        notValid(this);
    }
}

function notValid(node) {
    $(node).addClass('not-valid');
}

function valid(node) {
    $(node).removeClass('not-valid');
    $('#x-cord-error').addClass('hidden');
}

function checkHit(event) {
    if ($('input[name="radius"]:checked').val() == undefined) {
        $('#point-unable').removeClass('hidden');
        return;
    }
    $('#point-unable').addClass('hidden');

    let x = ((event.pageX - $('#graphic').offset().left - 10 - 140) / 20).toFixed(2);
    let y = ((event.pageY - $('#graphic').offset().top - 10 - 140) / 20).toFixed(2);

    $('#x-input').attr("value", x);
    $('#selected-y-cord').html(y);
    $('#y-input').attr('value', y);

    $('#check-btn').trigger('click');

}

function defineYcordValue(event) {
    if ($(event.target).is('button')) {
        $('#selected-y-cord').html(event.target.value);
        $('#y-input').attr("value", event.target.value);
        $('#y-cord-error').addClass('hidden');
    }
}

function submitData(event) {
    let allValid = true;

    $('#x-input').trigger('input');
    if ($('#x-input').is('.not-valid')) {
        $('#x-cord-error').removeClass('hidden');
        allValid = false;
    }

    let y = $('#y-input').attr('value');
    if (y === undefined) {
        $('#y-cord-error').removeClass('hidden');
        allValid = false;
    }

    let r = $('input[type="radio"][name="radius"]:checked').val();
    if (r == undefined) {
        $('#radius-error').removeClass('hidden');
        allValid = false;
    }

    if (!allValid) {
        event.preventDefault();
        return;
    }

    let time = calculateTimeOfsset(new Date().getTimezoneOffset() * -1);
    $('#time-offset').attr('value', time);
}

function redraw_graphic() {
    let path = $('#graphic path');
    let r = $('input[type="radio"][name="radius"]:checked').val();
    let path_points = "M 140 140 L 140 " + (140 - r*40/2) + " A " + (r*40/2) + " " + (r*40/2) + 
    " 0 0 1 " + (140 + r*40/2) + " 140 L " + (140 + r*40) + " 140 L 140 " + (140 + r*40/2) + 
    " L 140 " + (140 + r*40) + " L " + (140 - r*40/2) + " " + (140 + r*40) + " L " + 
    (140 - r*40/2) + " 140 L 140 140";

    path.attr("d", path_points);
}

function calculateTimeOfsset(time) {
    let hours = Math.abs(Math.floor(time / 60)); 
    let minutes = Math.abs(time % 60);

    if (hours < 10) {
        hours = '0' + hours;
    }

    if (minutes < 10) {
        minutes = '0' + minutes;
    }

    let sign = time < 0 ? '-' : '+';

    time = sign + hours + minutes;
    return time;
}

function draw_point() {
    let circle = $('#graphic circle');
    if (circle.is('.hidden'))
        circle.removeClass('hidden');

    circle.attr("cx", 150 + $('#x-cord-input').val() * 25);
    circle.attr("cy", 150 - $('#y-selection').val() * 25);
}


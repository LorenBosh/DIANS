document.addEventListener('DOMContentLoaded', (event) => {
    var showMoreButton = document.getElementById('showMoreButton');
    var showLessButton = document.getElementById('showLessButton');
    showMoreButton.addEventListener('click', showMore);
    showLessButton.addEventListener('click', showLess);

    var monuments = JSON.parse(document.getElementById('monuments-data').textContent);
    var brojac = 0;

    function fadeIn(element) {
        var opacity = 0;
        element.style.opacity = opacity;

        var fadeInInterval = setInterval(function () {
            if (opacity < 1) {
                opacity += 0.05;
                element.style.opacity = opacity;
            } else {
                clearInterval(fadeInInterval);
            }
        }, 50);
    }

    function fadeOut(element) {
        var opacity = 1;
        element.style.opacity = opacity;

        var fadeOutInterval = setInterval(function () {
            if (opacity > 0) {
                opacity -= 0.05; // Adjust the step to control the speed
                element.style.opacity = opacity;
            } else {
                clearInterval(fadeOutInterval);
                element.remove();
            }
        }, 50);
    }

    var topPosition =  document.documentElement.scrollTop;
    function showMore() {
        var karticka = document.getElementById("karticka");
        brojac++;

        if (brojac === 1) {
            karticka.style.maxHeight = '600px';
            document.getElementById('showLessButton').style.display = 'block';
        }

        var tableBody = document.querySelector('tbody');
        var currentRowCount = tableBody.querySelectorAll('tr').length;

        for (var i = currentRowCount; i < currentRowCount + 10; i++) {
            if (i < monuments.length) {
                var monument = monuments[i];
                var newRow = document.createElement('tr');
                newRow.innerHTML = '<td id="name"><a class="monument-link" href="/details/' + monument.id + '">' + monument.name + '</a></td>';
                tableBody.appendChild(newRow);

                /* Apply fadeIn effect to the new row */
                fadeIn(newRow);
            } else {
                /* No more monuments to show, hide the button */
                document.getElementById('showMoreButton').style.display = 'none';
                break;
            }
        }
        var currentPosition =  document.documentElement.scrollTop;
        window.scrollTo({
            top: currentPosition + 150,
            behavior: "smooth"
        })
    }


    function showLess() {
        var karticka = document.getElementById("karticka");
        karticka.style.maxHeight = '118px';

        document.getElementById('showMoreButton').style.display = 'block';

        /* Remove the dynamically added rows with fadeOut effect */
        var tableBody = document.querySelector('tbody');
        var rows = tableBody.querySelectorAll('tr');
        for (var i = 0; i < rows.length; i++) {
            fadeOut(rows[i]);
        }

        setTimeout(function () {
            brojac = 0;
        }, rows.length * 50);

        window.scrollTo({
            top:topPosition,
            behavior:"smooth"
        })

    }
});

document.getElementById("btn_minor").onclick = function() {
  const minors = document.getElementsByClassName("minor");

  let minorItems = Array.from(minors);

  minorItems.forEach(item => {
    if (item.style.display === "none") {
      item.style.display = "block";
    } else {
      item.style.display = "none";
    }
  });
  }

document.getElementById("btn_major").onclick = function() {
  let majors = document.getElementsByClassName("major");
  
  let majorItems = Array.from(majors);

  majorItems.forEach(item => {
    if (item.style.display === "none") {
      item.style.display = "block";
    } else {
      item.style.display = "none";
    }
  });
  }

/* shoutout to my friend Kruti for helping me fix the looping issues (among other things) - now the buttons work as intended - my original code is below:*/

/*document.getElementById("btn_minor").onclick = function() {
  const minor = document.getElementById("minor");
  
    if (minor.style.display === "none") {
      minor.style.display = "block";
    } else {
      minor.style.display = "none";
    }
  }

document.getElementById("btn_major").onclick = function() {
  const major = document.getElementById("major");
  
    if (major.style.display === "none") {
      major.style.display = "block";
    } else {
      major.style.display = "none";
    }
  }*/
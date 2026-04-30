document.getElementById("btn_minor").onclick = function() {
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
  }
  
/*  i have tried repeatedly to get this to loop through all the elements so that it would actually effect them all rather than the first but alas it refuses to do so - unfortunately I give up*/
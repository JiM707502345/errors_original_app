function pulldown() {

  const pullDownButton = document.getElementById("error-category")
  const pullDownParents = document.getElementById("pull-down")
  const pullDownChild = document.querySelectorAll(".pull-down-list")

  pullDownButton.addEventListener('click', function() {
    if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  })

  pullDownChild.forEach(function(list) {
    list.addEventListener('click', function() {
      value = list.innerHTML
      console.log(value)
    })
  })
}

window.addEventListener('load',pulldown)
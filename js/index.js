  function backgroundset(self) {
    var target = document.querySelector('.img-button');
    if (target.dataset.mode === 'On') {
      target.style.backgroundImage = 'url(images/Moon.jpg)';
      target.dataset.mode = 'Off';
    }
    else {
      target.style.backgroundImage = 'url(images/sun.jpg)';
      target.dataset.mode = 'On';
    }
  }
  function Switch(self){
    var target = document.querySelector('body');
    if (target.dataset.mode === 'On'){
      target.style.background = "linear-gradient(180deg, black, orange)";
      target.dataset.mode = 'Off';
      // backgroundset(1);
      // self.value = 'Off';
    }
    else {
      target.style.backgroundImage = 'none';
      target.style.backgroundColor = 'black';
      target.dataset.mode = 'On';
      // self.value = 'On';
    }
  }

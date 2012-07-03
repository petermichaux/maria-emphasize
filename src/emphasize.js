maria.View.prototype.emphasize = function() {
    this.emphasizeView();
    this.emphasizeChildViews();
};

maria.View.prototype.emphasizeView = function() {};

maria.View.prototype.emphasizeChildViews = function() {
    var childViews = this.childNodes;
    for (var i = 0, ilen = childViews.length; i < ilen; i++) {
        childViews[i].emphasize();
    }
};

maria.View.prototype.deEmphasize = function() {
    this.deEmphasizeView();
    this.deEmphasizeChildViews();
};

maria.View.prototype.deEmphasizeView = function() {};

maria.View.prototype.deEmphasizeChildViews = function() {
    var childViews = this.childNodes;
    for (var i = 0, ilen = childViews.length; i < ilen; i++) {
        childViews[i].deEmphasize();
    }
};

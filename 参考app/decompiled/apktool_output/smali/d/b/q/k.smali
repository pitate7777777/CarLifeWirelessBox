.class public Ld/b/q/k;
.super Landroid/widget/EditText;
.source ""


# instance fields
.field public final e:Ld/b/q/e;

.field public final f:Ld/b/q/y;

.field public final g:Ld/b/q/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Ld/b/a;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Ld/b/q/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Ld/b/q/u0;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Ld/b/q/s0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Ld/b/q/e;

    invoke-direct {p1, p0}, Ld/b/q/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Ld/b/q/k;->e:Ld/b/q/e;

    invoke-virtual {p1, p2, p3}, Ld/b/q/e;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Ld/b/q/y;

    invoke-direct {p1, p0}, Ld/b/q/y;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Ld/b/q/k;->f:Ld/b/q/y;

    invoke-virtual {p1, p2, p3}, Ld/b/q/y;->e(Landroid/util/AttributeSet;I)V

    iget-object p1, p0, Ld/b/q/k;->f:Ld/b/q/y;

    invoke-virtual {p1}, Ld/b/q/y;->b()V

    new-instance p1, Ld/b/q/x;

    invoke-direct {p1, p0}, Ld/b/q/x;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Ld/b/q/k;->g:Ld/b/q/x;

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    iget-object v0, p0, Ld/b/q/k;->e:Ld/b/q/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/b/q/e;->a()V

    :cond_0
    iget-object v0, p0, Ld/b/q/k;->f:Ld/b/q/y;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld/b/q/y;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Ld/b/q/k;->e:Ld/b/q/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/b/q/e;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Ld/b/q/k;->e:Ld/b/q/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/b/q/e;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Ld/b/q/k;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ld/b/q/k;->g:Ld/b/q/x;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ld/b/q/x;->a()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/widget/EditText;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Ld/b/k/m$i;->O0(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Ld/b/q/k;->e:Ld/b/q/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ld/b/q/e;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Ld/b/q/k;->e:Ld/b/q/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld/b/q/e;->f(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p0, p1}, Ld/b/k/m$i;->H1(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Ld/b/q/k;->e:Ld/b/q/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld/b/q/e;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Ld/b/q/k;->e:Ld/b/q/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ld/b/q/e;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Ld/b/q/k;->f:Ld/b/q/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ld/b/q/y;->f(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ld/b/q/k;->g:Ld/b/q/x;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput-object p1, v0, Ld/b/q/x;->b:Landroid/view/textclassifier/TextClassifier;

    return-void

    .line 2
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

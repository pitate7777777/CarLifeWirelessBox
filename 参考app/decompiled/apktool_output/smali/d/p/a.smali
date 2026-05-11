.class public Ld/p/a;
.super Ld/p/e;
.source ""


# instance fields
.field public v0:Landroid/widget/EditText;

.field public w0:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/p/e;-><init>()V

    return-void
.end method


# virtual methods
.method public I0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public J0(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Ld/p/e;->J0(Landroid/view/View;)V

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ld/p/a;->v0:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Ld/p/a;->v0:Landroid/widget/EditText;

    iget-object v0, p0, Ld/p/a;->w0:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ld/p/a;->v0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0}, Ld/p/a;->N0()Landroidx/preference/EditTextPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public L(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Ld/p/e;->L(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ld/p/a;->N0()Landroidx/preference/EditTextPreference;

    move-result-object p1

    .line 1
    iget-object p1, p1, Landroidx/preference/EditTextPreference;->Y:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ld/p/a;->w0:Ljava/lang/CharSequence;

    return-void
.end method

.method public L0(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld/p/a;->v0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ld/p/a;->N0()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->M(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final N0()Landroidx/preference/EditTextPreference;
    .locals 1

    invoke-virtual {p0}, Ld/p/e;->H0()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    return-object v0
.end method

.method public g0(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Ld/p/e;->g0(Landroid/os/Bundle;)V

    iget-object v0, p0, Ld/p/a;->w0:Ljava/lang/CharSequence;

    const-string v1, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

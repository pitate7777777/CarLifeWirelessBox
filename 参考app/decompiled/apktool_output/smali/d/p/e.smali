.class public abstract Ld/p/e;
.super Ld/k/d/c;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public n0:Landroidx/preference/DialogPreference;

.field public o0:Ljava/lang/CharSequence;

.field public p0:Ljava/lang/CharSequence;

.field public q0:Ljava/lang/CharSequence;

.field public r0:Ljava/lang/CharSequence;

.field public s0:I

.field public t0:Landroid/graphics/drawable/BitmapDrawable;

.field public u0:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/k/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method public F0(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()Ld/k/d/e;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p0, Ld/p/e;->u0:I

    new-instance v0, Ld/b/k/i$a;

    invoke-direct {v0, p1}, Ld/b/k/i$a;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Ld/p/e;->o0:Ljava/lang/CharSequence;

    .line 1
    iget-object v1, v0, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Ld/p/e;->t0:Landroid/graphics/drawable/BitmapDrawable;

    .line 3
    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->d:Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object p1, p0, Ld/p/e;->p0:Ljava/lang/CharSequence;

    .line 5
    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    iput-object p0, v1, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    iget-object p1, p0, Ld/p/e;->q0:Ljava/lang/CharSequence;

    .line 7
    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->k:Ljava/lang/CharSequence;

    iput-object p0, v1, Landroidx/appcompat/app/AlertController$b;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    invoke-virtual {p0}, Ld/p/e;->K0()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ld/p/e;->J0(Landroid/view/View;)V

    .line 9
    iget-object v1, v0, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->u:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, v1, Landroidx/appcompat/app/AlertController$b;->t:I

    iput-boolean p1, v1, Landroidx/appcompat/app/AlertController$b;->v:Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Ld/p/e;->r0:Ljava/lang/CharSequence;

    .line 11
    iget-object v1, v0, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->h:Ljava/lang/CharSequence;

    .line 12
    :goto_0
    invoke-virtual {p0, v0}, Ld/p/e;->M0(Ld/b/k/i$a;)V

    invoke-virtual {v0}, Ld/b/k/i$a;->a()Ld/b/k/i;

    move-result-object p1

    invoke-virtual {p0}, Ld/p/e;->I0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    return-object p1
.end method

.method public H0()Landroidx/preference/DialogPreference;
    .locals 2

    iget-object v0, p0, Ld/p/e;->n0:Landroidx/preference/DialogPreference;

    if-nez v0, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->j:Landroid/os/Bundle;

    const-string v1, "key"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->y()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/DialogPreference$a;

    invoke-interface {v1, v0}, Landroidx/preference/DialogPreference$a;->c(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DialogPreference;

    iput-object v0, p0, Ld/p/e;->n0:Landroidx/preference/DialogPreference;

    :cond_0
    iget-object v0, p0, Ld/p/e;->n0:Landroidx/preference/DialogPreference;

    return-object v0
.end method

.method public I0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public J0(Landroid/view/View;)V
    .locals 3

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Ld/p/e;->r0:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public K0()Landroid/view/View;
    .locals 3

    iget v0, p0, Ld/p/e;->s0:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->R:Landroid/view/LayoutInflater;

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->n0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2
    :cond_1
    invoke-virtual {v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public L(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Ld/k/d/c;->L(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->y()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/DialogPreference$a;

    if-eqz v1, :cond_4

    check-cast v0, Landroidx/preference/DialogPreference$a;

    .line 1
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->j:Landroid/os/Bundle;

    const-string v2, "key"

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    invoke-interface {v0, v1}, Landroidx/preference/DialogPreference$a;->c(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DialogPreference;

    iput-object p1, p0, Ld/p/e;->n0:Landroidx/preference/DialogPreference;

    .line 3
    iget-object v0, p1, Landroidx/preference/DialogPreference;->S:Ljava/lang/CharSequence;

    .line 4
    iput-object v0, p0, Ld/p/e;->o0:Ljava/lang/CharSequence;

    .line 5
    iget-object v0, p1, Landroidx/preference/DialogPreference;->V:Ljava/lang/CharSequence;

    .line 6
    iput-object v0, p0, Ld/p/e;->p0:Ljava/lang/CharSequence;

    .line 7
    iget-object v0, p1, Landroidx/preference/DialogPreference;->W:Ljava/lang/CharSequence;

    .line 8
    iput-object v0, p0, Ld/p/e;->q0:Ljava/lang/CharSequence;

    .line 9
    iget-object v0, p1, Landroidx/preference/DialogPreference;->T:Ljava/lang/CharSequence;

    .line 10
    iput-object v0, p0, Ld/p/e;->r0:Ljava/lang/CharSequence;

    .line 11
    iget v0, p1, Landroidx/preference/DialogPreference;->X:I

    .line 12
    iput v0, p0, Ld/p/e;->s0:I

    .line 13
    iget-object p1, p1, Landroidx/preference/DialogPreference;->U:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 14
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    :goto_1
    iput-object p1, p0, Ld/p/e;->t0:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_2

    :cond_2
    const-string v0, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Ld/p/e;->o0:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Ld/p/e;->p0:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Ld/p/e;->q0:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Ld/p/e;->r0:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ld/p/e;->s0:I

    const-string v0, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Ld/p/e;->t0:Landroid/graphics/drawable/BitmapDrawable;

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Target fragment must implement TargetFragment interface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract L0(Z)V
.end method

.method public M0(Ld/b/k/i$a;)V
    .locals 0

    return-void
.end method

.method public g0(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Ld/k/d/c;->g0(Landroid/os/Bundle;)V

    iget-object v0, p0, Ld/p/e;->o0:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ld/p/e;->p0:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ld/p/e;->q0:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ld/p/e;->r0:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget v0, p0, Ld/p/e;->s0:I

    const-string v1, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Ld/p/e;->t0:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Ld/p/e;->u0:I

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Ld/k/d/c;->onDismiss(Landroid/content/DialogInterface;)V

    iget p1, p0, Ld/p/e;->u0:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Ld/p/e;->L0(Z)V

    return-void
.end method

.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/DialogPreference$a;
    }
.end annotation


# instance fields
.field public S:Ljava/lang/CharSequence;

.field public T:Ljava/lang/CharSequence;

.field public U:Landroid/graphics/drawable/Drawable;

.field public V:Ljava/lang/CharSequence;

.field public W:Ljava/lang/CharSequence;

.field public X:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Ld/p/m;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Ld/b/k/m$i;->R(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Ld/p/s;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Ld/p/s;->DialogPreference_dialogTitle:I

    sget p3, Ld/p/s;->DialogPreference_android_dialogTitle:I

    invoke-static {p1, p2, p3}, Ld/b/k/m$i;->m0(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->S:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Landroidx/preference/Preference;->m:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, p0, Landroidx/preference/DialogPreference;->S:Ljava/lang/CharSequence;

    :cond_0
    sget p2, Ld/p/s;->DialogPreference_dialogMessage:I

    sget p3, Ld/p/s;->DialogPreference_android_dialogMessage:I

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    :cond_1
    iput-object p2, p0, Landroidx/preference/DialogPreference;->T:Ljava/lang/CharSequence;

    sget p2, Ld/p/s;->DialogPreference_dialogIcon:I

    sget p3, Ld/p/s;->DialogPreference_android_dialogIcon:I

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 6
    :cond_2
    iput-object p2, p0, Landroidx/preference/DialogPreference;->U:Landroid/graphics/drawable/Drawable;

    sget p2, Ld/p/s;->DialogPreference_positiveButtonText:I

    sget p3, Ld/p/s;->DialogPreference_android_positiveButtonText:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 8
    :cond_3
    iput-object p2, p0, Landroidx/preference/DialogPreference;->V:Ljava/lang/CharSequence;

    sget p2, Ld/p/s;->DialogPreference_negativeButtonText:I

    sget p3, Ld/p/s;->DialogPreference_android_negativeButtonText:I

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 10
    :cond_4
    iput-object p2, p0, Landroidx/preference/DialogPreference;->W:Ljava/lang/CharSequence;

    sget p2, Ld/p/s;->DialogPreference_dialogLayout:I

    sget p3, Ld/p/s;->DialogPreference_android_dialogLayout:I

    const/4 p4, 0x0

    .line 11
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 12
    iput p2, p0, Landroidx/preference/DialogPreference;->X:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public v()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->f:Ld/p/j;

    .line 2
    iget-object v0, v0, Ld/p/j;->j:Ld/p/j$a;

    if-eqz v0, :cond_6

    check-cast v0, Ld/p/f;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->h()Ld/k/d/e;

    move-result-object v1

    instance-of v1, v1, Ld/p/f$d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->h()Ld/k/d/e;

    move-result-object v1

    check-cast v1, Ld/p/f$d;

    invoke-interface {v1, v0, p0}, Ld/p/f$d;->a(Ld/p/f;Landroidx/preference/Preference;)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v1

    const-string v3, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v1, v3}, Ld/k/d/r;->H(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    :cond_2
    instance-of v1, p0, Landroidx/preference/EditTextPreference;

    const-string v4, "key"

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 4
    iget-object v1, p0, Landroidx/preference/Preference;->q:Ljava/lang/String;

    .line 5
    new-instance v6, Ld/p/a;

    invoke-direct {v6}, Ld/p/a;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v5}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v7, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->w0(Landroid/os/Bundle;)V

    goto :goto_1

    .line 6
    :cond_3
    instance-of v1, p0, Landroidx/preference/ListPreference;

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, p0, Landroidx/preference/Preference;->q:Ljava/lang/String;

    .line 8
    new-instance v6, Ld/p/c;

    invoke-direct {v6}, Ld/p/c;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v5}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v7, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->w0(Landroid/os/Bundle;)V

    goto :goto_1

    .line 9
    :cond_4
    instance-of v1, p0, Landroidx/preference/MultiSelectListPreference;

    if-eqz v1, :cond_5

    .line 10
    iget-object v1, p0, Landroidx/preference/Preference;->q:Ljava/lang/String;

    .line 11
    new-instance v6, Ld/p/d;

    invoke-direct {v6}, Ld/p/d;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v5}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v7, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->w0(Landroid/os/Bundle;)V

    .line 12
    :goto_1
    invoke-virtual {v6, v0, v2}, Landroidx/fragment/app/Fragment;->B0(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->t()Ld/k/d/r;

    move-result-object v0

    .line 13
    iput-boolean v2, v6, Ld/k/d/c;->l0:Z

    iput-boolean v5, v6, Ld/k/d/c;->m0:Z

    .line 14
    new-instance v1, Ld/k/d/a;

    invoke-direct {v1, v0}, Ld/k/d/a;-><init>(Ld/k/d/r;)V

    .line 15
    invoke-virtual {v1, v2, v6, v3, v5}, Ld/k/d/z;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 16
    invoke-virtual {v1}, Ld/k/d/z;->c()I

    goto :goto_2

    .line 17
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot display dialog for an unknown Preference type: "

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    return-void
.end method

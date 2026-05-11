.class public Ld/p/d;
.super Ld/p/e;
.source ""


# instance fields
.field public v0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w0:Z

.field public x0:[Ljava/lang/CharSequence;

.field public y0:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld/p/e;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ld/p/d;->v0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public L(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Ld/p/e;->L(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Ld/p/e;->H0()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Landroidx/preference/MultiSelectListPreference;

    .line 2
    iget-object v1, p1, Landroidx/preference/MultiSelectListPreference;->Y:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p1, Landroidx/preference/MultiSelectListPreference;->Z:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Ld/p/d;->v0:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Ld/p/d;->v0:Ljava/util/Set;

    .line 5
    iget-object v2, p1, Landroidx/preference/MultiSelectListPreference;->a0:Ljava/util/Set;

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iput-boolean v0, p0, Ld/p/d;->w0:Z

    .line 7
    iget-object v0, p1, Landroidx/preference/MultiSelectListPreference;->Y:[Ljava/lang/CharSequence;

    .line 8
    iput-object v0, p0, Ld/p/d;->x0:[Ljava/lang/CharSequence;

    .line 9
    iget-object p1, p1, Landroidx/preference/MultiSelectListPreference;->Z:[Ljava/lang/CharSequence;

    .line 10
    iput-object p1, p0, Ld/p/d;->y0:[Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Ld/p/d;->v0:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Ld/p/d;->v0:Ljava/util/Set;

    const-string v2, "MultiSelectListPreferenceDialogFragmentCompat.values"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ld/p/d;->w0:Z

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Ld/p/d;->x0:[Ljava/lang/CharSequence;

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ld/p/d;->y0:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public L0(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Ld/p/d;->w0:Z

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ld/p/e;->H0()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Landroidx/preference/MultiSelectListPreference;

    .line 2
    iget-object v0, p0, Ld/p/d;->v0:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/p/d;->v0:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroidx/preference/MultiSelectListPreference;->M(Ljava/util/Set;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/p/d;->w0:Z

    return-void
.end method

.method public M0(Ld/b/k/i$a;)V
    .locals 5

    iget-object v0, p0, Ld/p/d;->y0:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Ld/p/d;->v0:Ljava/util/Set;

    iget-object v4, p0, Ld/p/d;->y0:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/p/d;->x0:[Ljava/lang/CharSequence;

    new-instance v2, Ld/p/d$a;

    invoke-direct {v2, p0}, Ld/p/d$a;-><init>(Ld/p/d;)V

    .line 1
    iget-object p1, p1, Ld/b/k/i$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, p1, Landroidx/appcompat/app/AlertController$b;->q:[Ljava/lang/CharSequence;

    iput-object v2, p1, Landroidx/appcompat/app/AlertController$b;->A:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iput-object v1, p1, Landroidx/appcompat/app/AlertController$b;->w:[Z

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/appcompat/app/AlertController$b;->x:Z

    return-void
.end method

.method public g0(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Ld/p/e;->g0(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ld/p/d;->v0:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.values"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Ld/p/d;->w0:Z

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Ld/p/d;->x0:[Ljava/lang/CharSequence;

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ld/p/d;->y0:[Ljava/lang/CharSequence;

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

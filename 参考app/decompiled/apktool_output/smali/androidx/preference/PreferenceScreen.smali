.class public final Landroidx/preference/PreferenceScreen;
.super Landroidx/preference/PreferenceGroup;
.source ""


# instance fields
.field public Z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Ld/p/m;->preferenceScreenStyle:I

    const v1, 0x101008b

    invoke-static {p1, v0, v1}, Ld/b/k/m$i;->R(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/PreferenceScreen;->Z:Z

    return-void
.end method


# virtual methods
.method public P()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->r:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/preference/Preference;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->O()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->f:Ld/p/j;

    .line 5
    iget-object v0, v0, Ld/p/j;->k:Ld/p/j$b;

    if-eqz v0, :cond_1

    .line 6
    check-cast v0, Ld/p/f;

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->h()Ld/k/d/e;

    move-result-object v1

    instance-of v1, v1, Ld/p/f$f;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->h()Ld/k/d/e;

    move-result-object v1

    check-cast v1, Ld/p/f$f;

    invoke-interface {v1, v0, p0}, Ld/p/f$f;->a(Ld/p/f;Landroidx/preference/PreferenceScreen;)Z

    :cond_1
    :goto_0
    return-void
.end method

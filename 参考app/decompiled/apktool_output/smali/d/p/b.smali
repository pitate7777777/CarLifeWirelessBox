.class public final Ld/p/b;
.super Landroidx/preference/Preference;
.source ""


# instance fields
.field public S:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1
    sget p1, Ld/p/p;->expand_button:I

    .line 2
    iput p1, p0, Landroidx/preference/Preference;->J:I

    .line 3
    sget p1, Ld/p/n;->ic_arrow_down_24dp:I

    .line 4
    iget-object v0, p0, Landroidx/preference/Preference;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Ld/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/preference/Preference;->p:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    iput-object v0, p0, Landroidx/preference/Preference;->p:Landroid/graphics/drawable/Drawable;

    iput v2, p0, Landroidx/preference/Preference;->o:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->q()V

    .line 6
    :cond_0
    iput p1, p0, Landroidx/preference/Preference;->o:I

    .line 7
    sget p1, Ld/p/q;->expand_button_title:I

    .line 8
    iget-object v0, p0, Landroidx/preference/Preference;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 9
    iget-object v0, p0, Landroidx/preference/Preference;->m:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/preference/Preference;->m:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iput-object p1, p0, Landroidx/preference/Preference;->m:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->q()V

    :cond_3
    const/16 p1, 0x3e7

    .line 10
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->I(I)V

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 12
    iget-object v3, v1, Landroidx/preference/Preference;->m:Ljava/lang/CharSequence;

    .line 13
    instance-of v4, v1, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object v5, v1

    check-cast v5, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_5
    iget-object v5, v1, Landroidx/preference/Preference;->N:Landroidx/preference/PreferenceGroup;

    .line 15
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_4

    check-cast v1, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_7

    move-object v0, v3

    goto :goto_0

    .line 16
    :cond_7
    iget-object v1, p0, Landroidx/preference/Preference;->e:Landroid/content/Context;

    .line 17
    sget v4, Ld/p/q;->summary_collapsed_preference_list:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const/4 v0, 0x1

    aput-object v3, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->J(Ljava/lang/CharSequence;)V

    const-wide/32 p1, 0xf4240

    add-long/2addr p3, p1

    .line 18
    iput-wide p3, p0, Ld/p/b;->S:J

    return-void
.end method


# virtual methods
.method public e()J
    .locals 2

    iget-wide v0, p0, Ld/p/b;->S:J

    return-wide v0
.end method

.method public u(Ld/p/l;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->u(Ld/p/l;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p1, Ld/p/l;->u:Z

    return-void
.end method

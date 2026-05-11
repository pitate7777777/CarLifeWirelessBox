.class public final Le/d/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ld/k/d/e;

.field public b:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a;->b:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public constructor <init>(Ld/k/d/e;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a;->a:Ld/k/d/e;

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)Le/d/a/j/i;
    .locals 6

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v1, "elements"

    .line 1
    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    if-lez v1, :cond_0

    invoke-static {p1}, Ld/b/k/m$i;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lf/i/c;->e:Lf/i/c;

    .line 3
    :goto_0
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Le/d/a/a;->a:Ld/k/d/e;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Le/d/a/a;->b:Landroidx/fragment/app/Fragment;

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->l()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    const-string v4, "fragment!!.context!!"

    invoke-static {v3, v4}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    :goto_1
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    sget-object v5, Le/d/a/i/b;->a:Ljava/util/Set;

    .line 5
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string p1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x1d

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1e

    if-ne v2, v4, :cond_5

    if-ge v3, v4, :cond_5

    :cond_4
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance p1, Le/d/a/j/i;

    iget-object v2, p0, Le/d/a/a;->a:Ld/k/d/e;

    iget-object v3, p0, Le/d/a/a;->b:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v2, v3, v0, v1}, Le/d/a/j/i;-><init>(Ld/k/d/e;Landroidx/fragment/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V

    return-object p1
.end method

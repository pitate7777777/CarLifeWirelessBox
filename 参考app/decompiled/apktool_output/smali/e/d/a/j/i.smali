.class public final Le/d/a/j/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ld/k/d/e;

.field public b:Landroidx/fragment/app/Fragment;

.field public c:I

.field public d:I

.field public e:Landroid/app/Dialog;

.field public f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Z

.field public j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Le/d/a/g/d;

.field public q:Le/d/a/g/a;

.field public r:Le/d/a/g/b;

.field public s:Le/d/a/g/c;


# direct methods
.method public constructor <init>(Ld/k/d/e;Landroidx/fragment/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/k/d/e;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "normalPermissions"

    invoke-static {p3, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialPermissions"

    invoke-static {p4, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Le/d/a/j/i;->c:I

    iput v0, p0, Le/d/a/j/i;->d:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Le/d/a/j/i;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Le/d/a/j/i;->k:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Le/d/a/j/i;->l:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Le/d/a/j/i;->m:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Le/d/a/j/i;->n:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Le/d/a/j/i;->o:Ljava/util/Set;

    if-eqz p1, :cond_0

    iput-object p1, p0, Le/d/a/j/i;->a:Ld/k/d/e;

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->r0()Ld/k/d/e;

    move-result-object p1

    const-string v0, "fragment.requireActivity()"

    invoke-static {p1, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/d/a/j/i;->a:Ld/k/d/e;

    :cond_1
    iput-object p2, p0, Le/d/a/j/i;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Le/d/a/j/i;->f:Ljava/util/Set;

    iput-object p4, p0, Le/d/a/j/i;->g:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Ld/k/d/e;
    .locals 1

    iget-object v0, p0, Le/d/a/j/i;->a:Ld/k/d/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "activity"

    invoke-static {v0}, Lf/m/b/c;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b()Ld/k/d/r;
    .locals 2

    iget-object v0, p0, Le/d/a/j/i;->b:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->k()Ld/k/d/r;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/d/a/j/i;->a:Ld/k/d/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld/k/d/e;->E()Ld/k/d/r;

    move-result-object v0

    const-string v1, "activity.supportFragmentManager"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "activity"

    invoke-static {v0}, Lf/m/b/c;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c()Le/d/a/j/e;
    .locals 5

    invoke-virtual {p0}, Le/d/a/j/i;->b()Ld/k/d/r;

    move-result-object v0

    const-string v1, "InvisibleFragment"

    invoke-virtual {v0, v1}, Ld/k/d/r;->H(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existedFragment is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    check-cast v0, Le/d/a/j/e;

    goto :goto_0

    :cond_0
    new-instance v0, Le/d/a/j/e;

    invoke-direct {v0}, Le/d/a/j/e;-><init>()V

    invoke-virtual {p0}, Le/d/a/j/i;->b()Ld/k/d/r;

    move-result-object v2

    .line 1
    new-instance v3, Ld/k/d/a;

    invoke-direct {v3, v2}, Ld/k/d/a;-><init>(Ld/k/d/r;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 2
    invoke-virtual {v3, v2, v0, v1, v4}, Ld/k/d/z;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v3}, Ld/k/d/z;->e()V

    :goto_0
    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Le/d/a/j/i;->a:Ld/k/d/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0

    :cond_0
    const-string v0, "activity"

    invoke-static {v0}, Lf/m/b/c;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e(Le/d/a/g/d;)V
    .locals 2

    iput-object p1, p0, Le/d/a/j/i;->p:Le/d/a/g/d;

    new-instance p1, Le/d/a/j/l;

    invoke-direct {p1, p0}, Le/d/a/j/l;-><init>(Le/d/a/j/i;)V

    new-instance v0, Le/d/a/j/j;

    invoke-direct {v0, p0}, Le/d/a/j/j;-><init>(Le/d/a/j/i;)V

    .line 1
    iput-object v0, p1, Le/d/a/j/a;->a:Le/d/a/j/b;

    .line 2
    new-instance v1, Le/d/a/j/m;

    invoke-direct {v1, p0}, Le/d/a/j/m;-><init>(Le/d/a/j/i;)V

    .line 3
    iput-object v1, v0, Le/d/a/j/a;->a:Le/d/a/j/b;

    .line 4
    new-instance v0, Le/d/a/j/n;

    invoke-direct {v0, p0}, Le/d/a/j/n;-><init>(Le/d/a/j/i;)V

    .line 5
    iput-object v0, v1, Le/d/a/j/a;->a:Le/d/a/j/b;

    .line 6
    new-instance v1, Le/d/a/j/k;

    invoke-direct {v1, p0}, Le/d/a/j/k;-><init>(Le/d/a/j/i;)V

    .line 7
    iput-object v1, v0, Le/d/a/j/a;->a:Le/d/a/j/b;

    .line 8
    invoke-interface {p1}, Le/d/a/j/b;->c()V

    return-void
.end method

.method public final f(Ljava/util/Set;Le/d/a/j/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Le/d/a/j/b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Le/d/a/j/i;->c()Le/d/a/j/e;

    move-result-object v0

    .line 1
    iput-object p0, v0, Le/d/a/j/e;->Z:Le/d/a/j/i;

    iput-object p2, v0, Le/d/a/j/e;->a0:Le/d/a/j/b;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/Fragment;->q0([Ljava/lang/String;I)V

    return-void
.end method

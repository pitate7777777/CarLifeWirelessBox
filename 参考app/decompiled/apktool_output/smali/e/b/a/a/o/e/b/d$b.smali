.class public final Le/b/a/a/o/e/b/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/b/a/a/o/e/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/a/o/e/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final e:Le/b/a/a/o/e/b/d$a;

.field public final synthetic f:Le/b/a/a/o/e/b/d;


# direct methods
.method public constructor <init>(Le/b/a/a/o/e/b/d;Le/b/a/a/o/e/b/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/a/o/e/b/d$a;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/b/a/a/o/e/b/d$b;->f:Le/b/a/a/o/e/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/b/a/a/o/e/b/d$b;->e:Le/b/a/a/o/e/b/d$a;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    invoke-static {}, Le/b/a/a/q/a;->a()Le/b/a/a/q/b;

    const/4 v0, 0x0

    throw v0
.end method

.method public f(Le/b/a/a/o/e/c/a/b;JJ)V
    .locals 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/e/b/d$b;->f:Le/b/a/a/o/e/b/d;

    .line 1
    iget-object v0, v0, Le/b/a/a/o/e/b/d;->a:Le/b/a/a/c;

    .line 2
    new-instance v8, Le/b/a/a/o/e/b/d$b$d;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Le/b/a/a/o/e/b/d$b$d;-><init>(Le/b/a/a/o/e/b/d$b;Le/b/a/a/o/e/c/a/b;JJ)V

    invoke-interface {v0, v8}, Le/b/a/a/c;->p1(Lf/m/a/a;)V

    return-void
.end method

.method public i(Le/b/a/a/o/e/c/a/b;ILjava/lang/String;)V
    .locals 8

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p3, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/e/b/d$b;->f:Le/b/a/a/o/e/b/d;

    .line 1
    iget-object v0, v0, Le/b/a/a/o/e/b/d;->g:Le/b/a/a/o/e/b/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    .line 3
    :goto_0
    invoke-static {v0, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/b/a/a/o/e/b/d$b;->f:Le/b/a/a/o/e/b/d;

    .line 4
    iput-object v1, v0, Le/b/a/a/o/e/b/d;->g:Le/b/a/a/o/e/b/b;

    .line 5
    :cond_1
    iget-object v3, p0, Le/b/a/a/o/e/b/d$b;->f:Le/b/a/a/o/e/b/d;

    .line 6
    iget-object v0, v3, Le/b/a/a/o/e/b/d;->a:Le/b/a/a/c;

    .line 7
    new-instance v1, Le/b/a/a/o/e/b/d$b$b;

    move-object v2, v1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Le/b/a/a/o/e/b/d$b$b;-><init>(Le/b/a/a/o/e/b/d;Le/b/a/a/o/e/b/d$b;Le/b/a/a/o/e/c/a/b;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Le/b/a/a/c;->p1(Lf/m/a/a;)V

    return-void
.end method

.method public o(Le/b/a/a/o/e/c/a/b;I)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/e/b/d$b;->f:Le/b/a/a/o/e/b/d;

    .line 1
    iget-object v0, v0, Le/b/a/a/o/e/b/d;->a:Le/b/a/a/c;

    .line 2
    new-instance v1, Le/b/a/a/o/e/b/d$b$e;

    invoke-direct {v1, p0, p1, p2}, Le/b/a/a/o/e/b/d$b$e;-><init>(Le/b/a/a/o/e/b/d$b;Le/b/a/a/o/e/c/a/b;I)V

    invoke-interface {v0, v1}, Le/b/a/a/c;->p1(Lf/m/a/a;)V

    return-void
.end method

.method public s(Le/b/a/a/o/e/c/a/b;Z)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/e/b/d$b;->f:Le/b/a/a/o/e/b/d;

    .line 1
    iget-object v0, v0, Le/b/a/a/o/e/b/d;->g:Le/b/a/a/o/e/b/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Le/b/a/a/o/e/b/b;->h:Le/b/a/a/o/e/c/a/b;

    .line 3
    :goto_0
    invoke-static {v0, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/b/a/a/o/e/b/d$b;->f:Le/b/a/a/o/e/b/d;

    .line 4
    iput-object v1, v0, Le/b/a/a/o/e/b/d;->g:Le/b/a/a/o/e/b/b;

    .line 5
    :cond_1
    iget-object v0, p0, Le/b/a/a/o/e/b/d$b;->f:Le/b/a/a/o/e/b/d;

    .line 6
    iget-object v1, v0, Le/b/a/a/o/e/b/d;->a:Le/b/a/a/c;

    .line 7
    new-instance v2, Le/b/a/a/o/e/b/d$b$c;

    invoke-direct {v2, v0, p0, p1, p2}, Le/b/a/a/o/e/b/d$b$c;-><init>(Le/b/a/a/o/e/b/d;Le/b/a/a/o/e/b/d$b;Le/b/a/a/o/e/c/a/b;Z)V

    invoke-interface {v1, v2}, Le/b/a/a/c;->p1(Lf/m/a/a;)V

    return-void
.end method

.method public w(Le/b/a/a/o/e/c/a/b;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/e/b/d$b;->f:Le/b/a/a/o/e/b/d;

    .line 1
    iget-object v0, v0, Le/b/a/a/o/e/b/d;->a:Le/b/a/a/c;

    .line 2
    new-instance v1, Le/b/a/a/o/e/b/d$b$a;

    invoke-direct {v1, p0, p1}, Le/b/a/a/o/e/b/d$b$a;-><init>(Le/b/a/a/o/e/b/d$b;Le/b/a/a/o/e/c/a/b;)V

    invoke-interface {v0, v1}, Le/b/a/a/c;->p1(Lf/m/a/a;)V

    return-void
.end method

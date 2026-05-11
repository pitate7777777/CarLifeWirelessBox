.class public Ld/b/q/c$a;
.super Ld/b/p/i/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic m:Ld/b/q/c;


# direct methods
.method public constructor <init>(Ld/b/q/c;Landroid/content/Context;Ld/b/p/i/r;Landroid/view/View;)V
    .locals 7

    iput-object p1, p0, Ld/b/q/c$a;->m:Ld/b/q/c;

    sget v5, Ld/b/a;->actionOverflowMenuStyle:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Ld/b/p/i/l;-><init>(Landroid/content/Context;Ld/b/p/i/g;Landroid/view/View;ZII)V

    .line 2
    iget-object p2, p3, Ld/b/p/i/r;->B:Ld/b/p/i/i;

    .line 3
    invoke-virtual {p2}, Ld/b/p/i/i;->g()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Ld/b/q/c;->m:Ld/b/q/c$d;

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p1, Ld/b/p/i/b;->l:Ld/b/p/i/n;

    .line 5
    check-cast p2, Landroid/view/View;

    .line 6
    :cond_0
    iput-object p2, p0, Ld/b/p/i/l;->f:Landroid/view/View;

    .line 7
    :cond_1
    iget-object p1, p1, Ld/b/q/c;->B:Ld/b/q/c$f;

    invoke-virtual {p0, p1}, Ld/b/p/i/l;->d(Ld/b/p/i/m$a;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Ld/b/q/c$a;->m:Ld/b/q/c;

    const/4 v1, 0x0

    iput-object v1, v0, Ld/b/q/c;->y:Ld/b/q/c$a;

    const/4 v1, 0x0

    iput v1, v0, Ld/b/q/c;->C:I

    invoke-super {p0}, Ld/b/p/i/l;->c()V

    return-void
.end method

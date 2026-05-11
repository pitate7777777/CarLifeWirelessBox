.class public Ld/b/q/c$e;
.super Ld/b/p/i/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic m:Ld/b/q/c;


# direct methods
.method public constructor <init>(Ld/b/q/c;Landroid/content/Context;Ld/b/p/i/g;Landroid/view/View;Z)V
    .locals 7

    iput-object p1, p0, Ld/b/q/c$e;->m:Ld/b/q/c;

    sget v5, Ld/b/a;->actionOverflowMenuStyle:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Ld/b/p/i/l;-><init>(Landroid/content/Context;Ld/b/p/i/g;Landroid/view/View;ZII)V

    const p2, 0x800005

    .line 2
    iput p2, p0, Ld/b/p/i/l;->g:I

    .line 3
    iget-object p1, p1, Ld/b/q/c;->B:Ld/b/q/c$f;

    invoke-virtual {p0, p1}, Ld/b/p/i/l;->d(Ld/b/p/i/m$a;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Ld/b/q/c$e;->m:Ld/b/q/c;

    .line 1
    iget-object v0, v0, Ld/b/p/i/b;->g:Ld/b/p/i/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ld/b/p/i/g;->c(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Ld/b/q/c$e;->m:Ld/b/q/c;

    const/4 v1, 0x0

    iput-object v1, v0, Ld/b/q/c;->x:Ld/b/q/c$e;

    invoke-super {p0}, Ld/b/p/i/l;->c()V

    return-void
.end method

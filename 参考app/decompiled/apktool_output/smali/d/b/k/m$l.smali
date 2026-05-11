.class public final Ld/b/k/m$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/b/p/i/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/k/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation


# instance fields
.field public final synthetic e:Ld/b/k/m;


# direct methods
.method public constructor <init>(Ld/b/k/m;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/m$l;->e:Ld/b/k/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/p/i/g;Z)V
    .locals 4

    invoke-virtual {p1}, Ld/b/p/i/g;->k()Ld/b/p/i/g;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ld/b/k/m$l;->e:Ld/b/k/m;

    if-eqz v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v3, p1}, Ld/b/k/m;->B(Landroid/view/Menu;)Ld/b/k/m$k;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    iget-object p2, p0, Ld/b/k/m$l;->e:Ld/b/k/m;

    iget v2, p1, Ld/b/k/m$k;->a:I

    invoke-virtual {p2, v2, p1, v0}, Ld/b/k/m;->s(ILd/b/k/m$k;Landroid/view/Menu;)V

    iget-object p2, p0, Ld/b/k/m$l;->e:Ld/b/k/m;

    invoke-virtual {p2, p1, v1}, Ld/b/k/m;->u(Ld/b/k/m$k;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ld/b/k/m$l;->e:Ld/b/k/m;

    invoke-virtual {v0, p1, p2}, Ld/b/k/m;->u(Ld/b/k/m$k;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Ld/b/p/i/g;)Z
    .locals 2

    invoke-virtual {p1}, Ld/b/p/i/g;->k()Ld/b/p/i/g;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ld/b/k/m$l;->e:Ld/b/k/m;

    iget-boolean v1, v0, Ld/b/k/m;->D:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ld/b/k/m;->E()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld/b/k/m$l;->e:Ld/b/k/m;

    iget-boolean v1, v1, Ld/b/k/m;->P:Z

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.class public final Ld/b/k/m$c;
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
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Ld/b/k/m;


# direct methods
.method public constructor <init>(Ld/b/k/m;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/m$c;->e:Ld/b/k/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld/b/p/i/g;Z)V
    .locals 0

    iget-object p2, p0, Ld/b/k/m$c;->e:Ld/b/k/m;

    invoke-virtual {p2, p1}, Ld/b/k/m;->t(Ld/b/p/i/g;)V

    return-void
.end method

.method public b(Ld/b/p/i/g;)Z
    .locals 2

    iget-object v0, p0, Ld/b/k/m$c;->e:Ld/b/k/m;

    invoke-virtual {v0}, Ld/b/k/m;->E()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.class public Ld/h/l/w$i;
.super Ld/h/l/w$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/h/l/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public o:Ld/h/f/b;

.field public p:Ld/h/f/b;

.field public q:Ld/h/f/b;


# direct methods
.method public constructor <init>(Ld/h/l/w;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/h/l/w$h;-><init>(Ld/h/l/w;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld/h/l/w$i;->o:Ld/h/f/b;

    iput-object p1, p0, Ld/h/l/w$i;->p:Ld/h/f/b;

    iput-object p1, p0, Ld/h/l/w$i;->q:Ld/h/f/b;

    return-void
.end method


# virtual methods
.method public f()Ld/h/f/b;
    .locals 1

    iget-object v0, p0, Ld/h/l/w$i;->p:Ld/h/f/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ld/h/f/b;->b(Landroid/graphics/Insets;)Ld/h/f/b;

    move-result-object v0

    iput-object v0, p0, Ld/h/l/w$i;->p:Ld/h/f/b;

    :cond_0
    iget-object v0, p0, Ld/h/l/w$i;->p:Ld/h/f/b;

    return-object v0
.end method

.method public i(IIII)Ld/h/l/w;
    .locals 1

    iget-object v0, p0, Ld/h/l/w$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Ld/h/l/w;->i(Landroid/view/WindowInsets;)Ld/h/l/w;

    move-result-object p1

    return-object p1
.end method

.method public n(Ld/h/f/b;)V
    .locals 0

    return-void
.end method

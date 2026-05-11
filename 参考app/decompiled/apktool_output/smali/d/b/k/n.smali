.class public Ld/b/k/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/h/l/j;


# instance fields
.field public final synthetic a:Ld/b/k/m;


# direct methods
.method public constructor <init>(Ld/b/k/m;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/n;->a:Ld/b/k/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ld/h/l/w;)Ld/h/l/w;
    .locals 4

    invoke-virtual {p2}, Ld/h/l/w;->d()I

    move-result v0

    iget-object v1, p0, Ld/b/k/n;->a:Ld/b/k/m;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Ld/b/k/m;->N(Ld/h/l/w;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Ld/h/l/w;->b()I

    move-result v0

    invoke-virtual {p2}, Ld/h/l/w;->c()I

    move-result v2

    invoke-virtual {p2}, Ld/h/l/w;->a()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Ld/h/l/w;->g(IIII)Ld/h/l/w;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Ld/h/l/p;->P(Landroid/view/View;Ld/h/l/w;)Ld/h/l/w;

    move-result-object p1

    return-object p1
.end method

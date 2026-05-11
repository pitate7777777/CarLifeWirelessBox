.class public Ld/b/q/c$d$a;
.super Ld/b/q/h0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/b/q/c$d;-><init>(Ld/b/q/c;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic n:Ld/b/q/c$d;


# direct methods
.method public constructor <init>(Ld/b/q/c$d;Landroid/view/View;Ld/b/q/c;)V
    .locals 0

    iput-object p1, p0, Ld/b/q/c$d$a;->n:Ld/b/q/c$d;

    invoke-direct {p0, p2}, Ld/b/q/h0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Ld/b/p/i/p;
    .locals 1

    iget-object v0, p0, Ld/b/q/c$d$a;->n:Ld/b/q/c$d;

    iget-object v0, v0, Ld/b/q/c$d;->g:Ld/b/q/c;

    iget-object v0, v0, Ld/b/q/c;->x:Ld/b/q/c$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ld/b/p/i/l;->a()Ld/b/p/i/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Ld/b/q/c$d$a;->n:Ld/b/q/c$d;

    iget-object v0, v0, Ld/b/q/c$d;->g:Ld/b/q/c;

    invoke-virtual {v0}, Ld/b/q/c;->n()Z

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Ld/b/q/c$d$a;->n:Ld/b/q/c$d;

    iget-object v0, v0, Ld/b/q/c$d;->g:Ld/b/q/c;

    iget-object v1, v0, Ld/b/q/c;->z:Ld/b/q/c$c;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ld/b/q/c;->k()Z

    const/4 v0, 0x1

    return v0
.end method

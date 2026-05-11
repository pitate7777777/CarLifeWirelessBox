.class public abstract Ld/k/d/o;
.super Ld/k/d/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ld/k/d/k;"
    }
.end annotation


# instance fields
.field public final e:Landroid/app/Activity;

.field public final f:Landroid/content/Context;

.field public final g:Landroid/os/Handler;

.field public final h:Ld/k/d/r;


# direct methods
.method public constructor <init>(Ld/k/d/e;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1
    invoke-direct {p0}, Ld/k/d/k;-><init>()V

    new-instance v1, Ld/k/d/t;

    invoke-direct {v1}, Ld/k/d/t;-><init>()V

    iput-object v1, p0, Ld/k/d/o;->h:Ld/k/d/r;

    iput-object p1, p0, Ld/k/d/o;->e:Landroid/app/Activity;

    const-string v1, "context == null"

    invoke-static {p1, v1}, Ld/b/k/m$i;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ld/k/d/o;->f:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {v0, p1}, Ld/b/k/m$i;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Ld/k/d/o;->g:Landroid/os/Handler;

    return-void
.end method

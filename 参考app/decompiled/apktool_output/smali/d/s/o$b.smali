.class public Ld/s/o$b;
.super Ld/s/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/s/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ld/s/o;


# direct methods
.method public constructor <init>(Ld/s/o;)V
    .locals 0

    invoke-direct {p0}, Ld/s/l;-><init>()V

    iput-object p1, p0, Ld/s/o$b;->a:Ld/s/o;

    return-void
.end method


# virtual methods
.method public c(Ld/s/i;)V
    .locals 1

    iget-object p1, p0, Ld/s/o$b;->a:Ld/s/o;

    iget-boolean v0, p1, Ld/s/o;->P:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ld/s/i;->G()V

    iget-object p1, p0, Ld/s/o$b;->a:Ld/s/o;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ld/s/o;->P:Z

    :cond_0
    return-void
.end method

.method public e(Ld/s/i;)V
    .locals 2

    iget-object v0, p0, Ld/s/o$b;->a:Ld/s/o;

    iget v1, v0, Ld/s/o;->O:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ld/s/o;->O:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Ld/s/o;->P:Z

    invoke-virtual {v0}, Ld/s/i;->n()V

    :cond_0
    invoke-virtual {p1, p0}, Ld/s/i;->w(Ld/s/i$d;)Ld/s/i;

    return-void
.end method

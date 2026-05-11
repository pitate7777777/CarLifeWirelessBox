.class public Ld/s/a;
.super Ld/s/o;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ld/s/o;-><init>()V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ld/s/o;->K(I)Ld/s/o;

    new-instance v1, Ld/s/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ld/s/c;-><init>(I)V

    invoke-virtual {p0, v1}, Ld/s/o;->I(Ld/s/i;)Ld/s/o;

    new-instance v1, Ld/s/b;

    invoke-direct {v1}, Ld/s/b;-><init>()V

    invoke-virtual {p0, v1}, Ld/s/o;->I(Ld/s/i;)Ld/s/o;

    new-instance v1, Ld/s/c;

    invoke-direct {v1, v0}, Ld/s/c;-><init>(I)V

    invoke-virtual {p0, v1}, Ld/s/o;->I(Ld/s/i;)Ld/s/o;

    return-void
.end method

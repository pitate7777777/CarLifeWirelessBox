.class public final Lf/o/b;
.super Lf/i/f;
.source ""


# instance fields
.field public final e:I

.field public f:Z

.field public g:I

.field public final h:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Lf/i/f;-><init>()V

    iput p3, p0, Lf/o/b;->h:I

    iput p2, p0, Lf/o/b;->e:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    if-gt p1, p2, :cond_1

    goto :goto_0

    :cond_0
    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lf/o/b;->f:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Lf/o/b;->e:I

    :goto_1
    iput p1, p0, Lf/o/b;->g:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lf/o/b;->f:Z

    return v0
.end method

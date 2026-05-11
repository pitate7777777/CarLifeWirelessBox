.class public Lg/a/a1/c;
.super Lg/a/c0;
.source ""


# instance fields
.field public final f:I

.field public final g:I

.field public final h:J

.field public final i:Ljava/lang/String;

.field public j:Lg/a/a1/a;


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 8

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_0

    sget p1, Lg/a/a1/l;->b:I

    :cond_0
    and-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_1

    sget p2, Lg/a/a1/l;->c:I

    :cond_1
    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_2

    const-string p3, "DefaultDispatcher"

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 1
    :goto_0
    sget-wide v0, Lg/a/a1/l;->d:J

    .line 2
    invoke-direct {p0}, Lg/a/c0;-><init>()V

    iput p1, p0, Lg/a/a1/c;->f:I

    iput p2, p0, Lg/a/a1/c;->g:I

    iput-wide v0, p0, Lg/a/a1/c;->h:J

    iput-object p3, p0, Lg/a/a1/c;->i:Ljava/lang/String;

    .line 3
    new-instance p1, Lg/a/a1/a;

    iget v3, p0, Lg/a/a1/c;->f:I

    iget v4, p0, Lg/a/a1/c;->g:I

    iget-wide v5, p0, Lg/a/a1/c;->h:J

    iget-object v7, p0, Lg/a/a1/c;->i:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lg/a/a1/a;-><init>(IIJLjava/lang/String;)V

    .line 4
    iput-object p1, p0, Lg/a/a1/c;->j:Lg/a/a1/a;

    return-void
.end method


# virtual methods
.method public s(Lf/k/f;Ljava/lang/Runnable;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, Lg/a/a1/c;->j:Lg/a/a1/a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p1, p2, v0, v1, v2}, Lg/a/a1/a;->k(Lg/a/a1/a;Ljava/lang/Runnable;Lg/a/a1/j;ZI)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lg/a/r;->k:Lg/a/r;

    .line 1
    invoke-virtual {p1, p2}, Lg/a/y;->C(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

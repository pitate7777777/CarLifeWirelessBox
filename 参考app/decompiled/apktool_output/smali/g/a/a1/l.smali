.class public final Lg/a/a1/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:J

.field public static final b:I

.field public static final c:I

.field public static final d:J

.field public static e:Lg/a/a1/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Ld/b/k/m$i;->w1(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Lg/a/a1/l;->a:J

    const-string v2, "kotlinx.coroutines.scheduler.blocking.parallelism"

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ld/b/k/m$i;->v1(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 1
    sget v0, Lg/a/z0/p;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    .line 2
    invoke-static/range {v2 .. v7}, Ld/b/k/m$i;->v1(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lg/a/a1/l;->b:I

    .line 3
    sget v0, Lg/a/z0/p;->a:I

    mul-int/lit16 v0, v0, 0x80

    .line 4
    sget v1, Lg/a/a1/l;->b:I

    const v2, 0x1ffffe

    if-gt v1, v2, :cond_3

    if-ge v0, v1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    if-le v0, v2, :cond_2

    const v4, 0x1ffffe

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    const/4 v5, 0x0

    const v6, 0x1ffffe

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v3, "kotlinx.coroutines.scheduler.max.pool.size"

    invoke-static/range {v3 .. v8}, Ld/b/k/m$i;->v1(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lg/a/a1/l;->c:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    invoke-static/range {v1 .. v9}, Ld/b/k/m$i;->w1(Ljava/lang/String;JJJILjava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lg/a/a1/l;->d:J

    sget-object v0, Lg/a/a1/f;->a:Lg/a/a1/f;

    sput-object v0, Lg/a/a1/l;->e:Lg/a/a1/h;

    return-void

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is less than minimum "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public final Le/b/b/n/c/d/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public final c:I

.field public d:J


# direct methods
.method public constructor <init>(IIIJI)V
    .locals 0

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/16 p4, -0x1

    .line 1
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/b/b/n/c/d/a;->a:I

    iput p2, p0, Le/b/b/n/c/d/a;->b:I

    iput p3, p0, Le/b/b/n/c/d/a;->c:I

    iput-wide p4, p0, Le/b/b/n/c/d/a;->d:J

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 0

    long-to-float p1, p1

    invoke-virtual {p0}, Le/b/b/n/c/d/a;->d()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/16 p2, 0x3e8

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-long p1, p1

    return-wide p1
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Le/b/b/n/c/d/a;->c:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Le/b/b/n/c/d/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    return v0
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Le/b/b/n/c/d/a;->a:I

    iget v1, p0, Le/b/b/n/c/d/a;->b:I

    mul-int v0, v0, v1

    iget v1, p0, Le/b/b/n/c/d/a;->c:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final e()I
    .locals 4

    iget-wide v0, p0, Le/b/b/n/c/d/a;->d:J

    invoke-virtual {p0}, Le/b/b/n/c/d/a;->d()I

    move-result v2

    int-to-long v2, v2

    mul-long v0, v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Le/b/b/n/c/d/a;->d()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Le/b/b/n/c/d/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Le/b/b/n/c/d/a;

    iget v1, p0, Le/b/b/n/c/d/a;->a:I

    iget v3, p1, Le/b/b/n/c/d/a;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Le/b/b/n/c/d/a;->b:I

    iget v3, p1, Le/b/b/n/c/d/a;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Le/b/b/n/c/d/a;->c:I

    iget v3, p1, Le/b/b/n/c/d/a;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Le/b/b/n/c/d/a;->d:J

    iget-wide v5, p1, Le/b/b/n/c/d/a;->d:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Le/b/b/n/c/d/a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/b/b/n/c/d/a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/b/b/n/c/d/a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/b/b/n/c/d/a;->d:J

    invoke-static {v1, v2}, Lb;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AudioParams(sampleRate="

    invoke-static {v0}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/b/b/n/c/d/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/b/b/n/c/d/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/b/b/n/c/d/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/b/b/n/c/d/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

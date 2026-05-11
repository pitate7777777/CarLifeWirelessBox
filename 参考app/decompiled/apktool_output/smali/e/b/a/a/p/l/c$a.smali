.class public final Le/b/a/a/p/l/c$a;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/p/l/c;-><init>(Le/b/a/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/a<",
        "Le/b/a/a/o/e/c/a/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/b/a/a/p/l/c;


# direct methods
.method public constructor <init>(Le/b/a/a/p/l/c;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/p/l/c$a;->e:Le/b/a/a/p/l/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Le/b/a/a/p/l/c$a;->e:Le/b/a/a/p/l/c;

    .line 2
    iget-object v0, v0, Le/b/a/a/p/l/c;->g:Le/b/a/a/c;

    .line 3
    invoke-interface {v0}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "bdspeech_recognition_start.pcm"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    const-string v1, "context.applicationContext.assets.openFd(\"bdspeech_recognition_start.pcm\")"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x3e80

    const/4 v4, 0x1

    const/16 v5, 0x10

    .line 4
    new-instance v1, Le/b/a/a/o/e/c/a/a;

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Le/b/a/a/o/e/c/a/a;-><init>(IIIJI)V

    const-string v2, "params"

    .line 5
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fd"

    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    const-string v4, "fd.createInputStream()"

    invoke-static {v3, v4}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    long-to-int v0, v4

    .line 6
    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "stream"

    invoke-static {v3, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v0, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    const/16 v5, 0x1000

    sub-int v6, v0, v4

    if-le v5, v6, :cond_0

    move v5, v6

    :cond_0
    :try_start_0
    invoke-virtual {v3, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v4, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v3, v0}, Ld/b/k/m$i;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_1
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ld/b/k/m$i;->s(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Le/b/a/a/o/e/c/a/a;->a(J)J

    move-result-wide v3

    .line 7
    iput-wide v3, v1, Le/b/a/a/o/e/c/a/a;->d:J

    .line 8
    new-instance v0, Le/b/a/a/o/e/c/a/d/a;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    const-string v2, "wrap(storage)"

    invoke-static {v7, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3c

    move-object v6, v0

    move-object v8, v1

    invoke-direct/range {v6 .. v13}, Le/b/a/a/o/e/c/a/d/a;-><init>(Ljava/nio/ByteBuffer;Le/b/a/a/o/e/c/a/a;IIZZI)V

    const/4 v1, 0x3

    .line 9
    iput v1, v0, Le/b/a/a/o/e/c/a/d/a;->g:I

    const/4 v1, 0x2

    .line 10
    iput v1, v0, Le/b/a/a/o/e/c/a/d/a;->h:I

    return-object v0
.end method

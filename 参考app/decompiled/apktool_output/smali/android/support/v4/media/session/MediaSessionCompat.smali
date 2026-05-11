.class public Landroid/support/v4/media/session/MediaSessionCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$f;,
        Landroid/support/v4/media/session/MediaSessionCompat$e;,
        Landroid/support/v4/media/session/MediaSessionCompat$d;,
        Landroid/support/v4/media/session/MediaSessionCompat$c;,
        Landroid/support/v4/media/session/MediaSessionCompat$b;,
        Landroid/support/v4/media/session/MediaSessionCompat$g;,
        Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;,
        Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;,
        Landroid/support/v4/media/session/MediaSessionCompat$Token;,
        Landroid/support/v4/media/session/MediaSessionCompat$a;
    }
.end annotation


# static fields
.field public static c:I


# instance fields
.field public final a:Landroid/support/v4/media/session/MediaSessionCompat$b;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/media/session/MediaSessionCompat$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Ljava/util/ArrayList;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Ld/o/d/a;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "MediaSessionCompat"

    const-string v2, "Couldn\'t find a unique registered media button receiver in the given context."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    const/4 v4, 0x0

    if-lt v0, v3, :cond_1

    const/high16 v0, 0x2000000

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v4, v2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_3

    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$f;

    invoke-direct {v2, p1, p2, v1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$f;-><init>(Landroid/content/Context;Ljava/lang/String;Ld/u/d;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    const/16 v4, 0x1c

    if-lt v2, v4, :cond_4

    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$e;

    invoke-direct {v2, p1, p2, v1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$e;-><init>(Landroid/content/Context;Ljava/lang/String;Ld/u/d;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_4
    const/16 v4, 0x16

    if-lt v2, v4, :cond_5

    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$d;

    invoke-direct {v2, p1, p2, v1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$d;-><init>(Landroid/content/Context;Ljava/lang/String;Ld/u/d;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_5
    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-direct {v2, p1, p2, v1, v1}, Landroid/support/v4/media/session/MediaSessionCompat$c;-><init>(Landroid/content/Context;Ljava/lang/String;Ld/u/d;Landroid/os/Bundle;)V

    :goto_2
    iput-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_3
    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lc/a/a/a/a/e;

    invoke-direct {v1, p0}, Lc/a/a/a/a/e;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;)V

    invoke-virtual {p0, v1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->c(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V

    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {p2, v0}, Landroid/support/v4/media/session/MediaSessionCompat$b;->d(Landroid/app/PendingIntent;)V

    .line 2
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 3
    iget-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {p2}, Landroid/support/v4/media/session/MediaSessionCompat$b;->f()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_7

    new-instance v0, Lc/a/a/a/a/d;

    invoke-direct {v0, p1, p2}, Lc/a/a/a/a/d;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    goto :goto_4

    :cond_7
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 5
    :goto_4
    sget p2, Landroid/support/v4/media/session/MediaSessionCompat;->c:I

    if-nez p2, :cond_8

    const/4 p2, 0x1

    const/high16 v0, 0x43a00000    # 320.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    sput p1, Landroid/support/v4/media/session/MediaSessionCompat;->c:I

    :cond_8
    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tag must not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    const-class v0, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_6

    .line 1
    iget-wide v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 3
    :cond_1
    iget-wide v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->l:J

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_6

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 5
    iget v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:F

    sub-long v2, v20, v2

    long-to-float v2, v2

    mul-float v8, v8, v2

    float-to-long v2, v8

    .line 6
    iget-wide v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->f:J

    add-long/2addr v2, v8

    if-eqz v1, :cond_2

    .line 7
    iget-object v8, v1, Landroid/support/v4/media/MediaMetadataCompat;->e:Landroid/os/Bundle;

    const-string v9, "android.media.metadata.DURATION"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 8
    iget-object v1, v1, Landroid/support/v4/media/MediaMetadataCompat;->e:Landroid/os/Bundle;

    invoke-virtual {v1, v9, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    :cond_2
    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    move-wide v11, v4

    goto :goto_0

    :cond_3
    cmp-long v1, v2, v6

    if-gez v1, :cond_4

    move-wide v11, v6

    goto :goto_0

    :cond_4
    move-wide v11, v2

    .line 9
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-wide v13, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->g:J

    iget-wide v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->i:J

    iget v4, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->j:I

    iget-object v5, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->m:Ljava/util/List;

    if-eqz v6, :cond_5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-wide v6, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->n:J

    move-wide/from16 v23, v6

    iget-object v6, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->o:Landroid/os/Bundle;

    move-object/from16 v25, v6

    .line 10
    iget v10, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->e:I

    .line 11
    iget v15, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:F

    .line 12
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object v9, v0

    move-wide/from16 v16, v2

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v1

    invoke-direct/range {v9 .. v25}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    :cond_6
    :goto_1
    return-object v0
.end method

.method public static d(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "MediaSessionCompat"

    const-string v0, "Could not unparcel the data."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public c(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Landroid/support/v4/media/session/MediaSessionCompat$b;->j(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    :goto_0
    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$b;->j(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V

    :goto_1
    return-void
.end method

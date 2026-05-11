.class public final Le/b/a/a/o/e/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/o/e/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            "Le/b/a/a/o/e/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Le/b/a/a/o/e/a$a;

.field public final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Le/b/a/a/o/e/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Le/b/a/a/o/e/a;->a:Landroid/media/AudioManager;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/e/a;->b:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Le/b/a/a/o/e/a;->d:Ljava/util/LinkedList;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic f(Le/b/a/a/o/e/a;Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZI)I
    .locals 8

    and-int/lit8 v0, p6, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Le/b/a/a/o/e/a;->e(Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AudioFocusManager abandonAudioFocus"

    aput-object v3, v1, v2

    const-string v2, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v1, p0, Le/b/a/a/o/e/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/b/a/a/o/e/a$a;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Le/b/a/a/o/e/a;->b(Le/b/a/a/o/e/a$a;)V

    iget-object p1, p0, Le/b/a/a/o/e/a;->d:Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/b/a/a/o/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    check-cast p1, Le/b/a/a/o/e/a$a;

    invoke-virtual {p0, p1}, Le/b/a/a/o/e/a;->c(Le/b/a/a/o/e/a$a;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 5
    iget-object p1, p1, Le/b/a/a/o/e/a$a;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v0, -0x1

    .line 6
    invoke-interface {p1, v0}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p1, Le/b/a/a/o/e/a$a;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 8
    invoke-interface {p1, v0}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Le/b/a/a/o/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const-string v1, "delayedRequests.listIterator()"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "iterator.next()"

    invoke-static {v1, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/b/a/a/o/e/a$a;

    .line 10
    iget-object v1, v1, Le/b/a/a/o/e/a$a;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 11
    invoke-static {v1, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Le/b/a/a/o/e/a$a;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 1
    iget-object v1, p1, Le/b/a/a/o/e/a$a;->h:Landroid/media/AudioFocusRequest;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Le/b/a/a/o/e/a;->a:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Le/b/a/a/o/e/a;->c:Le/b/a/a/o/e/a$a;

    invoke-static {v1, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Le/b/a/a/o/e/a;->c:Le/b/a/a/o/e/a$a;

    :cond_1
    return-void

    :cond_2
    :goto_0
    :try_start_1
    iget-object v1, p0, Le/b/a/a/o/e/a;->a:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Le/b/a/a/o/e/a;->c:Le/b/a/a/o/e/a$a;

    invoke-static {v1, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object v0, p0, Le/b/a/a/o/e/a;->c:Le/b/a/a/o/e/a$a;

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Le/b/a/a/o/e/a;->c:Le/b/a/a/o/e/a$a;

    invoke-static {v2, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object v0, p0, Le/b/a/a/o/e/a;->c:Le/b/a/a/o/e/a$a;

    :cond_4
    throw v1
.end method

.method public final c(Le/b/a/a/o/e/a$a;)I
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_0

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    .line 1
    iget v4, p1, Le/b/a/a/o/e/a$a;->f:I

    .line 2
    invoke-direct {v0, v4}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    const-string v4, "Builder(listener.focusType)\n                    .setAudioAttributes(AudioAttributes\n                        .Builder()\n                        .setUsage(AudioAttributes.USAGE_MEDIA)\n                        .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC)\n                        .build())\n                    .setOnAudioFocusChangeListener(listener)\n                    .build()"

    invoke-static {v0, v4}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v0, p1, Le/b/a/a/o/e/a$a;->h:Landroid/media/AudioFocusRequest;

    .line 4
    iget-object v4, p0, Le/b/a/a/o/e/a;->a:Landroid/media/AudioManager;

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/b/a/a/o/e/a;->a:Landroid/media/AudioManager;

    .line 5
    iget v4, p1, Le/b/a/a/o/e/a$a;->f:I

    .line 6
    invoke-virtual {v0, p1, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    :goto_0
    if-ne v0, v2, :cond_1

    iput-object p1, p0, Le/b/a/a/o/e/a;->c:Le/b/a/a/o/e/a$a;

    iget-object v4, p0, Le/b/a/a/o/e/a;->b:Ljava/util/Map;

    .line 7
    iget-object v5, p1, Le/b/a/a/o/e/a$a;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 8
    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "AudioFocusManager requestAudioFocus "

    aput-object v7, v5, v6

    .line 9
    iget-object p1, p1, Le/b/a/a/o/e/a$a;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    aput-object p1, v5, v2

    const-string p1, " "

    aput-object p1, v5, v1

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    const-string p1, "CarLife_SDK"

    const-string v1, "tag"

    .line 11
    invoke-static {p1, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {v5, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, p1, v2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v0
.end method

.method public final d(Le/b/a/a/o/e/a$a;)V
    .locals 4

    iget-object v0, p0, Le/b/a/a/o/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/b/a/a/o/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/b/a/a/o/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v0, p0, Le/b/a/a/o/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const-string v1, "delayedRequests.listIterator()"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "iterator.next()"

    invoke-static {v1, v2}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/b/a/a/o/e/a$a;

    .line 1
    iget v2, p1, Le/b/a/a/o/e/a$a;->e:I

    iget v3, v1, Le/b/a/a/o/e/a$a;->e:I

    if-eq v2, v3, :cond_4

    .line 2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 3
    :cond_3
    iget v2, p1, Le/b/a/a/o/e/a$a;->e:I

    iget v3, v1, Le/b/a/a/o/e/a$a;->e:I

    if-le v2, v3, :cond_2

    .line 4
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public final declared-synchronized e(Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZ)I
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/b/a/a/o/e/a;->c:Le/b/a/a/o/e/a$a;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    iget-object v1, v0, Le/b/a/a/o/e/a$a;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2
    invoke-static {v1, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    monitor-exit p0

    return v2

    .line 3
    :cond_1
    :try_start_1
    iget v0, v0, Le/b/a/a/o/e/a$a;->e:I

    if-le v0, p2, :cond_5

    if-nez p5, :cond_5

    const/4 p5, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eqz p4, :cond_3

    .line 4
    new-instance p4, Le/b/a/a/o/e/a$a;

    invoke-direct {p4, p0, p2, p3, p1}, Le/b/a/a/o/e/a$a;-><init>(Le/b/a/a/o/e/a;IILandroid/media/AudioManager$OnAudioFocusChangeListener;)V

    invoke-virtual {p0, p4}, Le/b/a/a/o/e/a;->d(Le/b/a/a/o/e/a$a;)V

    new-array p2, p5, [Ljava/lang/Object;

    const-string p3, "AudioFocusManager requestAudioFocus "

    aput-object p3, p2, v3

    aput-object p1, p2, v2

    const-string p1, " "

    aput-object p1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "CarLife_SDK"

    const-string p3, "tag"

    .line 5
    invoke-static {p1, p3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "args"

    invoke-static {p2, p3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object p3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p3, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p2, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v0, p1, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_0
    monitor-exit p0

    return v1

    :cond_3
    :try_start_2
    new-array p2, p5, [Ljava/lang/Object;

    const-string p3, "AudioFocusManager requestAudioFocus "

    aput-object p3, p2, v3

    aput-object p1, p2, v2

    const-string p1, " "

    aput-object p1, p2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "CarLife_SDK"

    const-string p3, "tag"

    .line 9
    invoke-static {p1, p3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "args"

    invoke-static {p2, p3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez p3, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {p2, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v0, p1, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_1
    monitor-exit p0

    return v3

    :cond_5
    :goto_2
    :try_start_3
    new-instance p4, Le/b/a/a/o/e/a$a;

    invoke-direct {p4, p0, p2, p3, p1}, Le/b/a/a/o/e/a$a;-><init>(Le/b/a/a/o/e/a;IILandroid/media/AudioManager$OnAudioFocusChangeListener;)V

    invoke-virtual {p0, p4}, Le/b/a/a/o/e/a;->c(Le/b/a/a/o/e/a$a;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

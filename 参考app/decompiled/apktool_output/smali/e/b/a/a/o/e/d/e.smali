.class public final Le/b/a/a/o/e/d/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Le/b/a/a/o/e/d/e;

.field public static b:Le/b/a/a/o/e/d/b;

.field public static final c:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Le/b/a/a/o/e/d/a;->e:Le/b/a/a/o/e/d/a;

    sput-object v0, Le/b/a/a/o/e/d/e;->c:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public static final a(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "VR audio focus change to "

    aput-object v2, v0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "VoiceRecordUtil"

    const-string v1, "tag"

    .line 1
    invoke-static {p0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "args"

    invoke-static {v0, v1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

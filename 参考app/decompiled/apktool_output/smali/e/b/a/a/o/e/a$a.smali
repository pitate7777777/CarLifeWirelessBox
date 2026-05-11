.class public final Le/b/a/a/o/e/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/b/a/a/o/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public final g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public h:Landroid/media/AudioFocusRequest;

.field public final synthetic i:Le/b/a/a/o/e/a;


# direct methods
.method public constructor <init>(Le/b/a/a/o/e/a;IILandroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/b/a/a/o/e/a$a;->i:Le/b/a/a/o/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Le/b/a/a/o/e/a$a;->e:I

    iput p3, p0, Le/b/a/a/o/e/a$a;->f:I

    iput-object p4, p0, Le/b/a/a/o/e/a$a;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, Le/b/a/a/o/e/a$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/b/a/a/o/e/a$a;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    check-cast p1, Le/b/a/a/o/e/a$a;

    iget-object p1, p1, Le/b/a/a/o/e/a$a;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0, p1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Le/b/a/a/o/e/a$a;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "AudioFocusManager onAudioFocusChange "

    aput-object v2, v0, v1

    iget-object v1, p0, Le/b/a/a/o/e/a$a;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v3, " "

    aput-object v3, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "CarLife_SDK"

    const-string v4, "tag"

    .line 1
    invoke-static {v1, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v0, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v4, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v3, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v0, p0, Le/b/a/a/o/e/a$a;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-interface {v0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Le/b/a/a/o/e/a$a;->i:Le/b/a/a/o/e/a;

    .line 5
    iput-object p0, p1, Le/b/a/a/o/e/a;->c:Le/b/a/a/o/e/a$a;

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Le/b/a/a/o/e/a$a;->i:Le/b/a/a/o/e/a;

    iget-object v0, p0, Le/b/a/a/o/e/a$a;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, v0}, Le/b/a/a/o/e/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    :goto_1
    return-void
.end method

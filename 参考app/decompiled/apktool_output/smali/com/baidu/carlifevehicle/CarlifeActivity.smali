.class public final Lcom/baidu/carlifevehicle/CarlifeActivity;
.super Ld/b/k/j;
.source ""

# interfaces
.implements Le/b/a/a/p/d;
.implements Le/b/a/a/o/i/b;
.implements Landroid/view/View$OnClickListener;
.implements Le/b/a/a/p/f;
.implements Le/b/a/a/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlifevehicle/CarlifeActivity$a;
    }
.end annotation


# instance fields
.field public A:Le/b/a/a/d;

.field public B:Le/b/a/a/d;

.field public C:Le/b/b/o/h;

.field public D:Le/b/b/t/b;

.field public E:Z

.field public F:Le/b/b/p/a;

.field public G:Z

.field public H:I

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Landroid/support/v4/media/session/MediaSessionCompat;

.field public O:I

.field public u:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;

.field public v:Landroid/view/ViewGroup;

.field public w:Landroid/widget/Button;

.field public x:Le/b/a/a/o/i/b;

.field public y:Le/b/a/a/d;

.field public z:Le/b/a/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld/b/k/j;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->J:Ljava/lang/String;

    return-void
.end method

.method public static final P(Lcom/baidu/carlifevehicle/CarlifeActivity;)V
    .locals 4

    if-eqz p0, :cond_2

    .line 1
    new-instance v0, Le/b/b/t/b;

    invoke-direct {v0, p0}, Le/b/b/t/b;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/b/b/t/a;->d(Ljava/lang/String;)Le/b/b/t/a;

    const v1, 0x7f0f0049

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, v0, Le/b/b/t/b;->m:Landroid/widget/TextView;

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 5
    new-instance v1, Le/b/b/h;

    invoke-direct {v1, p0}, Le/b/b/h;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    .line 6
    iput-object v1, v0, Le/b/b/t/a;->i:Le/b/b/t/a$c;

    const v1, 0x7f0f001e

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/b/b/t/a;->b(Ljava/lang/String;)Le/b/b/t/a;

    .line 8
    iput-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->D:Le/b/b/t/b;

    new-instance v1, Le/b/b/g;

    invoke-direct {v1, p0}, Le/b/b/g;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->D:Le/b/b/t/b;

    invoke-static {v0}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->D:Le/b/b/t/b;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p0, 0x0

    throw p0
.end method

.method public static final T(Lcom/baidu/carlifevehicle/CarlifeActivity;Ljava/io/File;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "file>>>>>"

    aput-object v2, v0, v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "zwh"

    const-string v3, "tag"

    .line 1
    invoke-static {v1, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file.path"

    invoke-static {p1, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    .line 5
    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "application/vnd.android.package-archive"

    const/high16 v3, 0x10000000

    const-string v4, "android.intent.action.VIEW"

    const/16 v5, 0x18

    if-ge v0, v5, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "com.baidu.downloadmanager"

    .line 6
    invoke-static {p0, p1}, Landroidx/core/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$a;

    move-result-object p1

    invoke-interface {p1, v0}, Landroidx/core/content/FileProvider$a;->b(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "getUriForFile(context, \"com.baidu.downloadmanager\", file)"

    .line 7
    invoke-static {p1, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final U(Lcom/baidu/carlifevehicle/CarlifeActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    check-cast v0, Le/b/a/a/p/h;

    .line 2
    invoke-virtual {v0}, Le/b/a/a/p/h;->c()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static final V(Lcom/baidu/carlifevehicle/CarlifeActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->D:Le/b/b/t/b;

    return-void
.end method

.method public static final X(Lcom/baidu/carlifevehicle/CarlifeActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    check-cast v0, Le/b/a/a/p/h;

    .line 2
    invoke-virtual {v0}, Le/b/a/a/p/h;->c()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static final Y(Lcom/baidu/carlifevehicle/CarlifeActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->D:Le/b/b/t/b;

    return-void
.end method

.method public static final Z(Le/d/a/j/c;Ljava/util/List;)V
    .locals 3

    const-string v0, "scope"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u6253\u5f00\u6743\u9650"

    const-string v1, "\u786e\u5b9a"

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {p0, p1, v0, v1, v2}, Le/d/a/j/c;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final e0(Lcom/baidu/carlifevehicle/CarlifeActivity;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantedList"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "deniedList"

    invoke-static {p3, p2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "\u6743\u9650\u672a\u6253\u5f00: "

    invoke-static {p1, p3}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public N0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->k()I

    move-result p1

    const v0, 0x10037

    if-ne p1, v0, :cond_6

    invoke-virtual {p2}, Le/b/a/a/o/h/a;->j()Le/c/b/x;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeConnectExceptionProto$CarlifeConnectException;

    .line 1
    invoke-virtual {p1}, Lcom/baidu/carlife/protobuf/CarlifeConnectExceptionProto$CarlifeConnectException;->getExceptionType()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ld/b/k/j;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0043

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ld/b/k/j;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0042

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ld/b/k/j;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f002c

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Le/b/b/o/h;

    if-eqz p2, :cond_4

    invoke-static {p2}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-static {}, Le/b/b/o/p;->F0()Le/b/b/o/p;

    move-result-object v0

    invoke-virtual {p2, v0}, Le/b/b/o/h;->a(Le/b/b/o/g;)V

    :cond_4
    invoke-static {}, Le/b/b/o/p;->F0()Le/b/b/o/p;

    move-result-object p2

    invoke-virtual {p2, p1}, Le/b/b/o/p;->G0(Ljava/lang/String;)V

    goto :goto_2

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.baidu.carlife.protobuf.CarlifeConnectExceptionProto.CarlifeConnectException"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public final Q()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "++++++++++++++++++++Baidu Carlife Begin++++++++++++++++++++"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CarLife_SDK"

    const-string v4, "tag"

    .line 1
    invoke-static {v2, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v1, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v4, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v5, v1

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v2, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v1

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v2

    const-string v4, "VOICE_WAKEUP"

    invoke-virtual {v2, v4}, Le/b/b/s/b;->f(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v4, v2}, Le/b/a/a/c;->d0(Ljava/lang/String;I)V

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v2

    const-string v4, "VOICE_MIC"

    invoke-virtual {v2, v4}, Le/b/b/s/b;->f(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v4, v2}, Le/b/a/a/c;->d0(Ljava/lang/String;I)V

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v2

    const-string v4, "BLUETOOTH_INTERNAL_UI"

    invoke-virtual {v2, v4}, Le/b/b/s/b;->f(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v4, v2}, Le/b/a/a/c;->d0(Ljava/lang/String;I)V

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v2

    const-string v4, "FOCUS_UI"

    invoke-virtual {v2, v4}, Le/b/b/s/b;->f(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v4, v2}, Le/b/a/a/c;->d0(Ljava/lang/String;I)V

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v1

    const-string v2, "CONFIG_WIFI_DIRECT_NAME"

    invoke-virtual {v1, v2}, Le/b/b/s/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v1

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Le/b/b/s/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInstance().getStringFromMap(Configs.CONFIG_WIFI_DIRECT_NAME)"

    invoke-static {v4, v5}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Le/b/a/a/c;->c1(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v1

    const-string v2, "CONFIG_TARGET_BLUETOOTH_NAME"

    invoke-virtual {v1, v2}, Le/b/b/s/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v1

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Le/b/b/s/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInstance().getStringFromMap(Configs.CONFIG_TARGET_BLUETOOTH_NAME)"

    invoke-static {v4, v5}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Le/b/a/a/c;->c1(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v1

    const-string v2, "CONFIG_HU_BT_NAME"

    invoke-virtual {v1, v2}, Le/b/b/s/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v1

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Le/b/b/s/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInstance().getStringFromMap(Configs.CONFIG_HU_BT_NAME)"

    invoke-static {v4, v5}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Le/b/a/a/c;->c1(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v1

    const-string v2, "CONFIG_HU_BT_MAC"

    invoke-virtual {v1, v2}, Le/b/b/s/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v1

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Le/b/b/s/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInstance().getStringFromMap(Configs.CONFIG_HU_BT_MAC)"

    invoke-static {v4, v5}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Le/b/a/a/c;->c1(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v1

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v2

    const-string v4, "CONFIG_LOG_LEVEL"

    invoke-virtual {v2, v4}, Le/b/b/s/b;->f(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Le/b/a/a/c;->c1(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v1

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v2

    const-string v4, "CONFIG_WIRLESS_TYPE"

    invoke-virtual {v2, v4}, Le/b/b/s/b;->f(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Le/b/a/a/c;->c1(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v1

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v2

    const-string v4, "CONFIG_WIRLESS_FREQUENCY"

    invoke-virtual {v2, v4}, Le/b/b/s/b;->f(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Le/b/a/a/c;->c1(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v1

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v2

    const-string v4, "CONFIG_SAVE_AUDIO_FILE"

    invoke-virtual {v2, v4}, Le/b/b/s/b;->c(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Le/b/a/a/c;->c1(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v1

    invoke-static {}, Le/b/b/s/b;->d()Le/b/b/s/b;

    move-result-object v2

    const-string v4, "CONFIG_BLUETOOTH_AUDIO"

    invoke-virtual {v2, v4}, Le/b/b/s/b;->c(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Le/b/a/a/c;->c1(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v1

    sget-object v2, Le/b/b/s/d;->a:Ljava/lang/String;

    const-string v4, "vehicleChannel"

    invoke-static {v2, v4}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "12345678"

    check-cast v1, Le/b/a/a/p/h;

    const-string v5, "channel"

    .line 5
    invoke-static {v2, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "cuid"

    invoke-static {v4, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setChannel(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setCuid(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object v2

    invoke-virtual {v1}, Le/b/a/a/o/c;->g()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setVersionCode(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object v2

    invoke-virtual {v1}, Le/b/a/a/o/c;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setVersionName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectCount(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectSuccessCount(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectTime(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Le/c/b/p$b;->build()Le/c/b/p;

    move-result-object v2

    check-cast v2, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    .line 6
    iput-object v2, v1, Le/b/a/a/o/c;->A:Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    .line 7
    iput-boolean v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->M:Z

    return-void
.end method

.method public synthetic T0(Le/b/a/a/c;Le/b/a/a/o/h/a;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le/b/a/a/o/i/a;->b(Le/b/a/a/o/i/b;Le/b/a/a/c;Le/b/a/a/o/h/a;)Z

    move-result p1

    return p1
.end method

.method public final g0(Z)V
    .locals 4

    :try_start_0
    invoke-static {}, Le/b/b/s/e;->a()Le/b/b/s/e;

    move-result-object v0

    const-string v1, "connect_status"

    if-eqz v0, :cond_0

    .line 1
    iget-object v2, v0, Le/b/b/s/e;->d:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, v0, Le/b/b/s/e;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "CarLife_SDK"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "save connect status error"

    aput-object v3, v1, v2

    const-string v2, "tag"

    .line 2
    invoke-static {v0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v1, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0, v1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public l(I)V
    .locals 3

    const/16 v0, 0x3f6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, p1, v1, v2, v1}, Le/b/b/p/b;->c(IIILjava/lang/Object;I)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const p1, 0x18009

    .line 2
    invoke-static {p1}, Le/b/b/p/b;->a(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090063

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->O:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->O:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    invoke-static {}, Le/b/b/j;->a()Le/b/b/j;

    move-result-object p1

    .line 1
    iget-object v1, p1, Le/b/b/j;->g:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p1, Le/b/b/j;->g:Landroid/widget/PopupWindow;

    iget-object v1, p1, Le/b/b/j;->e:Landroid/view/ViewGroup;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p1, Le/b/b/j;->h:Landroid/view/View;

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    const-string v7, "scaleX"

    invoke-static {v2, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p1, Le/b/b/j;->h:Landroid/view/View;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    const-string v6, "scaleY"

    invoke-static {p1, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 2
    iput v3, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->O:I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public onConnectionAttached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x3ec

    invoke-static {p1}, Le/b/b/p/b;->a(I)V

    return-void
.end method

.method public onConnectionAuthenFailed(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x3fc

    invoke-static {p1}, Le/b/b/p/b;->a(I)V

    return-void
.end method

.method public synthetic onConnectionBoxNeedActive(Le/b/a/a/c;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le/b/a/a/h;->c(Le/b/a/a/i;Le/b/a/a/c;Ljava/lang/String;I)V

    return-void
.end method

.method public onConnectionDetached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x3ea

    invoke-static {p1}, Le/b/b/p/b;->a(I)V

    return-void
.end method

.method public onConnectionEstablished(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x3fb

    invoke-static {p1}, Le/b/b/p/b;->a(I)V

    return-void
.end method

.method public onConnectionReattached(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionVersionNotSupprt(Le/b/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x3f2

    invoke-static {p1}, Le/b/b/p/b;->a(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Ld/b/k/j;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    invoke-virtual {p0, p1}, Ld/b/k/j;->setContentView(I)V

    const p1, 0x7f09024f

    invoke-virtual {p0, p1}, Ld/b/k/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.video_surface_view)"

    invoke-static {p1, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->u:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;

    const p1, 0x7f0901b9

    invoke-virtual {p0, p1}, Ld/b/k/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.root_view)"

    invoke-static {p1, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->v:Landroid/view/ViewGroup;

    new-instance p1, Le/b/b/o/h;

    invoke-direct {p1, p0}, Le/b/b/o/h;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Le/b/b/o/h;

    .line 1
    sput-object p0, Le/b/b/o/g;->a0:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Le/b/b/o/g;->b0:Landroid/content/Context;

    sget-object p1, Le/b/b/o/g;->a0:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 2
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Le/b/b/o/h;

    .line 3
    sput-object p1, Le/b/b/o/g;->c0:Le/b/b/o/h;

    .line 4
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->C:Le/b/b/o/h;

    invoke-static {p1}, Lf/m/b/c;->c(Ljava/lang/Object;)V

    .line 5
    sget-object v0, Le/b/b/o/o;->f0:Le/b/b/o/o;

    if-nez v0, :cond_0

    new-instance v0, Le/b/b/o/o;

    invoke-direct {v0}, Le/b/b/o/o;-><init>()V

    sput-object v0, Le/b/b/o/o;->f0:Le/b/b/o/o;

    :cond_0
    sget-object v0, Le/b/b/o/o;->f0:Le/b/b/o/o;

    .line 6
    invoke-virtual {p1, v0}, Le/b/b/o/h;->a(Le/b/b/o/g;)V

    const p1, 0x7f090063

    invoke-virtual {p0, p1}, Ld/b/k/j;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.bt_hard)"

    invoke-static {p1, v0}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->w:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Le/b/b/q/c;

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Le/b/b/q/c;-><init>(Le/b/a/a/c;Le/b/a/a/p/f;)V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->y:Le/b/a/a/d;

    new-instance p1, Le/b/b/q/a;

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    invoke-direct {p1, v0}, Le/b/b/q/a;-><init>(Le/b/a/a/c;)V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->z:Le/b/a/a/d;

    new-instance p1, Le/b/b/q/b;

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    invoke-direct {p1, v0}, Le/b/b/q/b;-><init>(Le/b/a/a/c;)V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->A:Le/b/a/a/d;

    new-instance p1, Le/b/b/q/d;

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    invoke-direct {p1, v0}, Le/b/b/q/d;-><init>(Le/b/a/a/c;)V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->B:Le/b/a/a/d;

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->y:Le/b/a/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-interface {p1, v0}, Le/b/a/a/c;->a0(Le/b/a/a/d;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->z:Le/b/a/a/d;

    if-eqz v0, :cond_b

    invoke-interface {p1, v0}, Le/b/a/a/c;->a0(Le/b/a/a/d;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->A:Le/b/a/a/d;

    if-eqz v0, :cond_a

    invoke-interface {p1, v0}, Le/b/a/a/c;->a0(Le/b/a/a/d;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->B:Le/b/a/a/d;

    if-eqz v0, :cond_9

    invoke-interface {p1, v0}, Le/b/a/a/c;->a0(Le/b/a/a/d;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    check-cast p1, Le/b/a/a/p/h;

    const-string v0, "listener"

    .line 7
    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Le/b/a/a/p/h;->J:Le/b/a/a/p/m/a/c;

    .line 8
    monitor-enter p1

    :try_start_0
    const-string v0, "listener"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Le/b/a/a/p/m/a/c;->e:Le/b/a/a/c;

    invoke-interface {v0}, Le/b/a/a/c;->e1()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p1, Le/b/a/a/p/m/a/c;->e:Le/b/a/a/c;

    invoke-interface {v0}, Le/b/a/a/c;->e1()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    :cond_1
    iget v0, p1, Le/b/a/a/p/m/a/c;->g:I

    invoke-virtual {p0, v0}, Lcom/baidu/carlifevehicle/CarlifeActivity;->l(I)V

    :cond_2
    iget-object v0, p1, Le/b/a/a/p/m/a/c;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 9
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    invoke-interface {p1, p0}, Le/b/a/a/c;->W(Le/b/a/a/o/i/b;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    invoke-interface {p1, p0}, Le/b/a/a/c;->P0(Le/b/a/a/l;)V

    new-instance p1, Le/b/b/m;

    invoke-direct {p1}, Le/b/b/m;-><init>()V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->x:Le/b/a/a/o/i/b;

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->x:Le/b/a/a/o/i/b;

    if-eqz v0, :cond_8

    invoke-interface {p1, v0}, Le/b/a/a/c;->W(Le/b/a/a/o/i/b;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object p1

    new-instance v0, Le/b/b/b;

    invoke-direct {v0, p0}, Le/b/b/b;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    check-cast p1, Le/b/a/a/p/h;

    .line 10
    iput-object v0, p1, Le/b/a/a/p/h;->H:Le/b/a/a/p/e;

    .line 11
    new-instance p1, Le/d/a/a;

    invoke-direct {p1, p0}, Le/d/a/a;-><init>(Ld/k/d/e;)V

    const-string v0, "android.permission.RECORD_AUDIO"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 12
    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/d/a/a;->a([Ljava/lang/String;)Le/d/a/j/i;

    move-result-object p1

    sget-object v0, Le/b/b/d;->a:Le/b/b/d;

    .line 13
    iput-object v0, p1, Le/d/a/j/i;->q:Le/d/a/g/a;

    .line 14
    new-instance v0, Le/b/b/c;

    invoke-direct {v0, p0}, Le/b/b/c;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    invoke-virtual {p1, v0}, Le/d/a/j/i;->e(Le/d/a/g/d;)V

    .line 15
    invoke-static {}, Le/b/b/j;->a()Le/b/b/j;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->v:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    .line 16
    :try_start_1
    iput-object p0, p1, Le/b/b/j;->f:Landroid/content/Context;

    iput-object v0, p1, Le/b/b/j;->e:Landroid/view/ViewGroup;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c009e

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v3, p1, Le/b/b/j;->h:Landroid/view/View;

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p1, Le/b/b/j;->g:Landroid/widget/PopupWindow;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f0900f2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Le/b/b/j;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090068

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->j:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f09006e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->k:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f09006a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->l:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f09006b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->m:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->j:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->l:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090071

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->n:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090070

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->o:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090073

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->p:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090072

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->q:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090064

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->r:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->n:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->o:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->p:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->q:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->r:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f09006d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->s:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090074

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->t:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090067

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->u:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090069

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->v:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f09006f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->w:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->s:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->t:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->u:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->v:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->w:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090180

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->x:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090181

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->y:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f0901af

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->z:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f0901b0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->A:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090182

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->B:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f09019f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->C:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f0901a0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->D:Landroid/widget/Button;

    iget-object v0, p1, Le/b/b/j;->x:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->y:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->z:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->A:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->B:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->B:Landroid/widget/Button;

    sget-object v3, Le/b/b/a;->e:Le/b/b/a;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->C:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->D:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f09006c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090075

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090065

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090066

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f09007b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->E:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f09007a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->F:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f090102

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f0900da

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f030003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Le/b/b/j;->I:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Le/b/b/j;->J:Ljava/util/Map;

    iget-object v3, p1, Le/b/b/j;->I:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const v4, 0x18003

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Le/b/b/j;->J:Ljava/util/Map;

    iget-object v3, p1, Le/b/b/j;->I:[Ljava/lang/String;

    aget-object v3, v3, v2

    const v4, 0x18005

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f0901e4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Le/b/b/j;->G:Landroid/widget/Spinner;

    iget-object v0, p1, Le/b/b/j;->h:Landroid/view/View;

    const v3, 0x7f0901e5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Le/b/b/j;->H:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Le/b/b/j;->G:Landroid/widget/Spinner;

    new-instance v3, Le/b/b/i;

    invoke-direct {v3, p1}, Le/b/b/i;-><init>(Le/b/b/j;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :goto_0
    new-instance p1, Lcom/baidu/carlifevehicle/CarlifeActivity$a;

    invoke-direct {p1, p0}, Lcom/baidu/carlifevehicle/CarlifeActivity$a;-><init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->F:Le/b/b/p/a;

    invoke-static {p1}, Le/b/b/p/b;->d(Le/b/b/p/a;)V

    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->F:Le/b/b/p/a;

    if-eqz p1, :cond_5

    check-cast p1, Lcom/baidu/carlifevehicle/CarlifeActivity$a;

    const/16 v0, 0x3e8

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance p1, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string v0, "CarlifeActivity"

    invoke-direct {p1, p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->N:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v0, Lcom/baidu/carlifevehicle/CarlifeActivity$b;

    invoke-direct {v0}, Lcom/baidu/carlifevehicle/CarlifeActivity$b;-><init>()V

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->c(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V

    .line 19
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->N:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez p1, :cond_3

    goto :goto_2

    .line 20
    :cond_3
    iget-object v0, p1, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$b;->e(Z)V

    iget-object p1, p1, Landroid/support/v4/media/session/MediaSessionCompat;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$g;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$g;->a()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    .line 21
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.baidu.carlifevehicle.CarlifeActivity.MsgMainActivityHandler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_6
    throw v1

    :cond_7
    const-string p1, "mRootView"

    .line 23
    invoke-static {p1}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    :cond_8
    const-string p1, "mVehicleControlHandler"

    invoke-static {p1}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p1

    throw v0

    :cond_9
    const-string p1, "mVRModule"

    .line 25
    invoke-static {p1}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    :cond_a
    const-string p1, "mNavModule"

    invoke-static {p1}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    :cond_b
    const-string p1, "mMusicModule"

    invoke-static {p1}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    :cond_c
    const-string p1, "mPhoneModule"

    invoke-static {p1}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 6

    invoke-super {p0}, Ld/b/k/j;->onDestroy()V

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->N:Landroid/support/v4/media/session/MediaSessionCompat;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a()V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->u:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3
    iget-object v2, v0, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView;->e:Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;

    .line 4
    iget-object v3, v2, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->c:Le/b/a/a/o/g/a;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Le/b/a/a/o/g/a;->a(Z)V

    iput-object v1, v2, Lcom/baidu/carlife/sdk/receiver/view/RemoteDisplayGLView$a;->c:Le/b/a/a/o/g/a;

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v2

    check-cast v2, Le/b/a/a/p/h;

    invoke-virtual {v2, v1}, Le/b/a/a/p/h;->z(Landroid/view/Surface;)V

    .line 5
    :goto_1
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v2

    check-cast v2, Le/b/a/a/p/h;

    .line 6
    monitor-enter v2

    :try_start_0
    const-string v3, "listener"

    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v2, Le/b/a/a/p/h;->I:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    const-string v0, "CarLife_SDK"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "MainActivity onDestroy"

    aput-object v5, v2, v3

    const-string v3, "tag"

    .line 7
    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0, v2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :goto_2
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    check-cast v0, Le/b/a/a/p/h;

    const-string v2, "listener"

    .line 11
    invoke-static {p0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Le/b/a/a/p/h;->J:Le/b/a/a/p/m/a/c;

    .line 12
    monitor-enter v0

    :try_start_1
    const-string v2, "listener"

    invoke-static {p0, v2}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Le/b/a/a/p/m/a/c;->f:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    .line 13
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    invoke-interface {v0, p0}, Le/b/a/a/c;->d1(Le/b/a/a/o/i/b;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->x:Le/b/a/a/o/i/b;

    if-eqz v2, :cond_7

    invoke-interface {v0, v2}, Le/b/a/a/c;->d1(Le/b/a/a/o/i/b;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    check-cast v0, Le/b/a/a/p/h;

    .line 14
    iput-object v1, v0, Le/b/a/a/p/h;->H:Le/b/a/a/p/e;

    .line 15
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->y:Le/b/a/a/d;

    if-eqz v2, :cond_6

    invoke-interface {v0, v2}, Le/b/a/a/c;->r0(Le/b/a/a/d;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->z:Le/b/a/a/d;

    if-eqz v2, :cond_5

    invoke-interface {v0, v2}, Le/b/a/a/c;->r0(Le/b/a/a/d;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->A:Le/b/a/a/d;

    if-eqz v2, :cond_4

    invoke-interface {v0, v2}, Le/b/a/a/c;->r0(Le/b/a/a/d;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->B:Le/b/a/a/d;

    if-eqz v2, :cond_3

    invoke-interface {v0, v2}, Le/b/a/a/c;->r0(Le/b/a/a/d;)V

    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    invoke-interface {v0, p0}, Le/b/a/a/c;->u(Le/b/a/a/l;)V

    iget-object v0, p0, Lcom/baidu/carlifevehicle/CarlifeActivity;->F:Le/b/b/p/a;

    invoke-static {v0}, Le/b/b/p/b;->e(Le/b/b/p/a;)V

    return-void

    :cond_3
    const-string v0, "mVRModule"

    invoke-static {v0}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "mNavModule"

    invoke-static {v0}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v0, "mMusicModule"

    invoke-static {v0}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "mPhoneModule"

    invoke-static {v0}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string v0, "mVehicleControlHandler"

    invoke-static {v0}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v0

    .line 17
    monitor-exit v2

    throw v0

    :cond_8
    const-string v0, "mSurfaceView"

    .line 18
    invoke-static {v0}, Lf/m/b/c;->k(Ljava/lang/String;)V

    throw v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Ld/b/k/j;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Ld/b/k/j;->onStart()V

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Le/b/b/n/d/d;->b:Z

    sget v0, Le/b/b/n/d/d;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Le/b/b/n/d/f;->a:Le/b/b/n/d/f;

    invoke-static {}, Le/b/b/n/d/f;->b()V

    goto :goto_0

    :cond_1
    sget-object v0, Le/b/b/n/d/f;->a:Le/b/b/n/d/f;

    invoke-static {}, Le/b/b/n/d/f;->c()V

    .line 2
    :goto_0
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v0

    check-cast v0, Le/b/a/a/p/h;

    .line 3
    iget-object v0, v0, Le/b/a/a/p/h;->K:Le/b/a/a/p/k/b;

    .line 4
    iget-object v2, v0, Le/b/a/a/p/k/b;->h:Le/b/a/a/p/k/a;

    if-eqz v2, :cond_2

    iget-object v0, v0, Le/b/a/a/p/k/b;->e:Le/b/a/a/c;

    const v2, 0x18009

    invoke-interface {v0, v1, v2}, Le/b/a/a/c;->g1(II)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Ld/b/k/j;->onStop()V

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Le/b/b/n/d/d;->b:Z

    sget v1, Le/b/b/n/d/d;->a:I

    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Le/b/b/n/d/f;->a:Le/b/b/n/d/f;

    invoke-static {}, Le/b/b/n/d/f;->a()V

    .line 2
    :goto_0
    invoke-static {}, Le/b/a/a/p/b;->a()Le/b/a/a/p/c;

    move-result-object v1

    check-cast v1, Le/b/a/a/p/h;

    .line 3
    iget-object v1, v1, Le/b/a/a/p/h;->K:Le/b/a/a/p/k/b;

    .line 4
    iget-object v2, v1, Le/b/a/a/p/k/b;->h:Le/b/a/a/p/k/a;

    if-eqz v2, :cond_1

    iget-object v1, v1, Le/b/a/a/p/k/b;->e:Le/b/a/a/c;

    const v2, 0x1800a

    invoke-interface {v1, v0, v2}, Le/b/a/a/c;->g1(II)V

    :cond_1
    return-void
.end method

.method public x(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const p1, 0x7f0f002f

    .line 1
    sget-object v0, Le/b/b/o/g;->a0:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 2
    new-instance v1, Le/b/b/s/c;

    invoke-direct {v1, p1}, Le/b/b/s/c;-><init>(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0030

    .line 3
    sget-object v0, Le/b/b/o/g;->a0:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 4
    new-instance v1, Le/b/b/s/c;

    invoke-direct {v1, p1}, Le/b/b/s/c;-><init>(I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

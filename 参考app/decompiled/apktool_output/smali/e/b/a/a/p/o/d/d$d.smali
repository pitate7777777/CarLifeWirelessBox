.class public final Le/b/a/a/p/o/d/d$d;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/p/o/d/d;-><init>(Le/b/a/a/c;Le/b/a/a/p/o/d/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/a<",
        "Landroid/content/IntentFilter;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Le/b/a/a/p/o/d/d$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/b/a/a/p/o/d/d$d;

    invoke-direct {v0}, Le/b/a/a/p/o/d/d$d;-><init>()V

    sput-object v0, Le/b/a/a/p/o/d/d$d;->e:Le/b/a/a/p/o/d/d$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

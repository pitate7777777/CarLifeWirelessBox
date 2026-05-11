.class public final synthetic Le/b/a/a/o/e/b/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic a:Le/b/a/a/o/e/b/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/b/a/a/o/e/b/a;

    invoke-direct {v0}, Le/b/a/a/o/e/b/a;-><init>()V

    sput-object v0, Le/b/a/a/o/e/b/a;->a:Le/b/a/a/o/e/b/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p1}, Le/b/a/a/o/e/b/d;->a(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

.class public Landroid/opengl/EGLDisplay;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLDisplay.java"


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "handle"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLObjectHandle;-><init>(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Landroid/opengl/EGLDisplay;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/opengl/EGLDisplay;

    .local v0, "that":Landroid/opengl/EGLDisplay;
    invoke-virtual {p0}, Landroid/opengl/EGLDisplay;->getNativeHandle()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/opengl/EGLDisplay;->getNativeHandle()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

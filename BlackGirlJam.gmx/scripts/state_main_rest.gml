/// Rest after a hit

if (state_new) {
    time = 10;
}

if (time) {
    time--;
}

if (!time) {
    state_switch("Idle");
}

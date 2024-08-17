const app = new Vue({
        el: '#app',
        data: {
                health: 0,
                inviteCode: ""
        },
        methods: {
                updateHud({ action, value }) {
                        let avActions = ["health", "inviteCode"];
                        let avVal = avActions.map(act => act === action);
                        if (!avVal.includes(true)) return;
                        this[action] = value;
                }
        },
        mounted() {
                window.addEventListener('message', async ({data}) => this[data.type] && this[data.type](data));
        }
);

<script>
export default {
  data() {
    return {
      morality: 0,
    };
  },
  methods: {
    beggar() {
      this.morality+= 1;
    },
    tofu() {
      this.morality+= 1;
    },
    carrots() {
      this.morality+= 1;
    },
    celery() {
      this.morality+= 2;
    },
    capture() {
      this.morality+= 10;
    },
    blueQuest() {
      this.morality+= 25;
    },
    donate() {
      this.morality+= 20;
    },
    threaten() {
      this.morality-= 1;
    },
    assault() {
      this.morality-= 5;
    },
    vandalize() {
      this.morality-= 5;
    },
    chick() {
      this.morality-= 5;
    },
    drag() {
      this.morality-= 10;
    },
    kill() {
      this.morality-= 15;
    },
    redQuest() {
      this.morality-= 25;
    },
    embezzle() {
      this.morality-= 30;
    },
  },
};
</script>


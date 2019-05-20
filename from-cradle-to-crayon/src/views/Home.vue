<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png" />
    <table>
      <tr>
        <td>Category</td>
        <td>company_name</td>
        <td>debit_date</td>
        <td>debit</td>
      </tr>
      <tr v-for="e in expenses" :key="e.id">
        <td>{{ e.expense_category }}</td>
        <td>{{ e.company_name }}</td>
        <td>{{ e.debit_date }}</td>
        <td>{{ e.debit }}</td>
      </tr>

    </table>
  </div>
</template>

<script>
import axios from 'axios';
// @ is an alias to /src
//import HelloWorld from "@/components/HelloWorld.vue";

export default {
  name: "home",
  components: {
  },
  data() {
    return {
      expenses: null
    }
  },
  mounted () {
    axios
      .get('http://localhost:3000/expenses.json', {crossdomain: true})
      .then(response => (this.expenses = response.data))
  }
};
</script>

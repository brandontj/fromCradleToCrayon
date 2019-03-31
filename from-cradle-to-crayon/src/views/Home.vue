<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png" />
    <ul>
      <li v-for="(c, key) in categories"
        :key="key">{{ c }}</li>

    </ul>
  </div>
</template>

<script>
const categories = {"Advertisting":["Advertisting (general)"],"Car \u0026 Truck Expenses":["Car \u0026 Truck Expenses","Gas","Repairs","Vehicle Insurance","Vehicle Licensing"],"Contractors":["Contractors (general)"],"Education and Training":["Education and Training (general)"],"Employee Benefits":["Employee Benefits","Accident Insurance","Health Insurance","Life Insurance"],"Meals \u0026 Entertainment":["Meals \u0026 Entertainment (general)","Entertainment","Restaurants/Dining"],"Office Expenses \u0026 Postages":["Office Expenses \u0026 Postage (general)","Hardware","Office Supplies","Packaging","Postage","Printing","Shipping \u0026 Couriers","Software","Stationery"],"Other Expenses":["Other Expenses (general)","Bank Fees","Business Insurance","Commissions","Depreciation","Interest - Mortgage","Interest - Other","Online Services","Reference Materials","Repairs \u0026 Maintenance","Subscriptions/Dues/Memberships","Taxes \u0026 Licenses","Wages"],"Personal":["Personal (general)"],"Professional Services":["Professional Services (general)","Accounting","Legal Fees"],"Rent or Lease":["Rent or Lease (general)","Equipment","Machinery","Office Space","Vehicles"],"Supplies":["Supplies (general)"],"Travel":["Travel (general)","Airfare","Hotel/Lodging/Accommodation","Taxi \u0026 Parking"],"Utilities":["Utilities (general)","Gas \u0026 Electrical","Phone"]}
// @ is an alias to /src
//import HelloWorld from "@/components/HelloWorld.vue";

export default {
  name: "home",
  components: {
  },
  data() {
    return {
      categories: Object.keys(categories)
    }
  }
};
</script>

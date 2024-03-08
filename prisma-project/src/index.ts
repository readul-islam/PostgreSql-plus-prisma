import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

const main = async()=>{
// const result = await prisma.post.create({
//     data:{
//         title:"This is title",
//         content:"something",
//         published:true
//     }
// })
const result = await prisma.post.findMany()
console.log(result)
}

main()
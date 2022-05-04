let a = [17, 28, 30]
let b = [99, 16, 8]
let aliasScore = 0
let bobScore = 0
let resultArray = []
for (let i = 0; i < a.length; i++) {
    if (a[i] > b[i]) {
        aliasScore += 1
    } else if (a[i] < b[i]) {
        bobScore += 1
    }
}
resultArray.push(aliasScore)
resultArray.push(bobScore)
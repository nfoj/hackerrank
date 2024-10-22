/*

Given an array of integers, find the sum of its elements.

For example, if the array ar = [1,2,3]. 1 + 2 + 3 = 6, so return 6

# Input
6
1 2 3 4 10 11

# Output
31

*/

// Result

use std::env;
use std::fs::File;
use std::io::{self, BufRead, Write};

fn simpleArraySum(ar: &[i32]) -> i32 {
    let mut sum = 0;
    for i in 0..ar.len() {
        sum = sum + ar[i];
    }

    return sum;
}

fn main() {
    let stdin = io::stdin();
    let mut stdin_iterator = stdin.lock().lines();

    let mut fptr = File::create(env::var("OUTPUT_PATH").unwrap()).unwrap();

    let _ar_count = stdin_iterator
        .next()
        .unwrap()
        .unwrap()
        .trim()
        .parse::<i32>()
        .unwrap();

    let ar: Vec<i32> = stdin_iterator
        .next()
        .unwrap()
        .unwrap()
        .trim_end()
        .split(' ')
        .map(|s| s.to_string().parse::<i32>().unwrap())
        .collect();

    let result = simpleArraySum(&ar);

    writeln!(&mut fptr, "{}", result).ok();
}

// Result
use std::io;

fn main() {
    let mut count = String::new();
    io::stdin().read_line(&mut count).unwrap();

    let mut num = String::new();
    io::stdin().read_line(&mut num).unwrap();
    let v: Vec<&str> = num.trim().split(' ').collect();

    let mut total: i32 = 0;
    for num in &v {
        let num: i32 = num.parse().unwrap();
        total += num;
    }

    println!("{}", total);
}

// Result

fn main() {
    let mut stdin = std::io::stdin();
    let mut line1 = String::new();
    let mut line2 = String::new();
    stdin.read_line(&mut line1).unwrap();
    stdin.read_line(&mut line2).unwrap();

    // line1 = line1.trim().to_string();
    line2 = line2.trim().to_string();

    let nums = line2.split(' ').map(|e| e.parse::<i32>().unwrap());

    println!("{}", nums.fold(0, |acc, e| e + acc));
}

using NUnit.Framework;

namespace Example.Tests
{
    public class Tests
    {

        [Test]
        public void Sum_GivenSecondArgumantAsZero_ShouldCalculateProperly()
        {
            var actual = Utilities.Sum(1,0);
            var expected = 1;
            Assert.AreEqual(expected,actual);
        }
            
        [Test]
        public void Sum_GivenOnePlusTwo_ShouldCalculateProperly()
        {
            var actual = Utilities.Sum(1,2);
            var expected = 3;
            Assert.AreEqual(expected,actual);
        }
    }
}
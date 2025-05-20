
package Paws::SSM::DescribeInstanceProperties;
  use Moose;
  has FiltersWithOperator => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InstancePropertyStringFilter]');
  has InstancePropertyFilterList => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InstancePropertyFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceProperties');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeInstancePropertiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInstanceProperties - Arguments for method DescribeInstanceProperties on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstanceProperties on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeInstanceProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstanceProperties.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeInstancePropertiesResult = $ssm->DescribeInstanceProperties(
      FiltersWithOperator => [
        {
          Key    => 'MyInstancePropertyStringFilterKey',   # min: 1, max: 100000
          Values => [
            'MyInstancePropertyFilterValue', ...           # min: 1, max: 100000
          ],    # min: 1, max: 40
          Operator => 'Equal'
          , # values: Equal, NotEqual, BeginWith, LessThan, GreaterThan; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      InstancePropertyFilterList => [
        {
          Key => 'InstanceIds'
          , # values: InstanceIds, AgentVersion, PingStatus, PlatformTypes, DocumentName, ActivationIds, IamRole, ResourceType, AssociationStatus
          ValueSet => [
            'MyInstancePropertyFilterValue', ...    # min: 1, max: 100000
          ],    # min: 1, max: 40

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $InstanceProperties =
      $DescribeInstancePropertiesResult->InstanceProperties;
    my $NextToken = $DescribeInstancePropertiesResult->NextToken;

    # Returns a L<Paws::SSM::DescribeInstancePropertiesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeInstanceProperties>

=head1 ATTRIBUTES


=head2 FiltersWithOperator => ArrayRef[L<Paws::SSM::InstancePropertyStringFilter>]

The request filters to use with the operator.



=head2 InstancePropertyFilterList => ArrayRef[L<Paws::SSM::InstancePropertyFilter>]

An array of instance property filters.



=head2 MaxResults => Int

The maximum number of items to return for the call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token provided by a previous request to use to return the next set
of properties.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstanceProperties in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::RedShift::DescribeIntegrations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::DescribeIntegrationsFilter]');
  has IntegrationArn => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIntegrations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::IntegrationsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeIntegrationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeIntegrations - Arguments for method DescribeIntegrations on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIntegrations on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeIntegrations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIntegrations.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $IntegrationsMessage = $redshift->DescribeIntegrations(
      Filters => [
        {
          Name => 'integration-arn'
          ,    # values: integration-arn, source-arn, source-types, status
          Values => [
            'MyString', ...    # max: 2147483647
          ],

        },
        ...
      ],    # OPTIONAL
      IntegrationArn => 'MyIntegrationArn',    # OPTIONAL
      Marker         => 'MyString',            # OPTIONAL
      MaxRecords     => 1,                     # OPTIONAL
    );

    # Results:
    my $Integrations = $IntegrationsMessage->Integrations;
    my $Marker       = $IntegrationsMessage->Marker;

    # Returns a L<Paws::RedShift::IntegrationsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeIntegrations>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::RedShift::DescribeIntegrationsFilter>]

A filter that specifies one or more resources to return.



=head2 IntegrationArn => Str

The unique identifier of the integration.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeIntegrations> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified
C<MaxRecords> value, a value is returned in a C<marker> field of the
response. You can retrieve the next set of records by retrying the
command with the returned marker value.

Default: C<100>

Constraints: minimum 20, maximum 100.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIntegrations in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::RedshiftServerless::DeleteUsageLimit;
  use Moose;
  has UsageLimitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'usageLimitId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUsageLimit');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::DeleteUsageLimitResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::DeleteUsageLimit - Arguments for method DeleteUsageLimit on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUsageLimit on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method DeleteUsageLimit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUsageLimit.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $DeleteUsageLimitResponse = $redshift -serverless->DeleteUsageLimit(
      UsageLimitId => 'MyString',

    );

    # Results:
    my $UsageLimit = $DeleteUsageLimitResponse->UsageLimit;

    # Returns a L<Paws::RedshiftServerless::DeleteUsageLimitResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/DeleteUsageLimit>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UsageLimitId => Str

The unique identifier of the usage limit to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUsageLimit in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


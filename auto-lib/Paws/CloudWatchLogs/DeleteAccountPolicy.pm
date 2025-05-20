
package Paws::CloudWatchLogs::DeleteAccountPolicy;
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyName' , required => 1);
  has PolicyType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DeleteAccountPolicy - Arguments for method DeleteAccountPolicy on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAccountPolicy on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DeleteAccountPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAccountPolicy.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->DeleteAccountPolicy(
      PolicyName => 'MyPolicyName',
      PolicyType => 'DATA_PROTECTION_POLICY',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DeleteAccountPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyName => Str

The name of the policy to delete.



=head2 B<REQUIRED> PolicyType => Str

The type of policy to delete.

Valid values are: C<"DATA_PROTECTION_POLICY">, C<"SUBSCRIPTION_FILTER_POLICY">, C<"FIELD_INDEX_POLICY">, C<"TRANSFORMER_POLICY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAccountPolicy in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


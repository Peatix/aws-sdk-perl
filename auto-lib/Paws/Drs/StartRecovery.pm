
package Paws::Drs::StartRecovery;
  use Moose;
  has IsDrill => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isDrill');
  has SourceServers => (is => 'ro', isa => 'ArrayRef[Paws::Drs::StartRecoveryRequestSourceServer]', traits => ['NameInRequest'], request_name => 'sourceServers', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Drs::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartRecovery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/StartRecovery');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::StartRecoveryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::StartRecovery - Arguments for method StartRecovery on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartRecovery on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method StartRecovery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartRecovery.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $StartRecoveryResponse = $drs->StartRecovery(
      SourceServers => [
        {
          SourceServerID     => 'MySourceServerID',    # min: 19, max: 19
          RecoverySnapshotID =>
            'MyRecoverySnapshotID',    # min: 21, max: 21; OPTIONAL
        },
        ...
      ],
      IsDrill => 1,                    # OPTIONAL
      Tags    => {
        'MyTagKey' => 'MyTagValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Job = $StartRecoveryResponse->Job;

    # Returns a L<Paws::Drs::StartRecoveryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/StartRecovery>

=head1 ATTRIBUTES


=head2 IsDrill => Bool

Whether this Source Server Recovery operation is a drill or not.



=head2 B<REQUIRED> SourceServers => ArrayRef[L<Paws::Drs::StartRecoveryRequestSourceServer>]

The Source Servers that we want to start a Recovery Job for.



=head2 Tags => L<Paws::Drs::TagsMap>

The tags to be associated with the Recovery Job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartRecovery in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


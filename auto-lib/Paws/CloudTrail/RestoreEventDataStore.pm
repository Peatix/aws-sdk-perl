
package Paws::CloudTrail::RestoreEventDataStore;
  use Moose;
  has EventDataStore => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreEventDataStore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::RestoreEventDataStoreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::RestoreEventDataStore - Arguments for method RestoreEventDataStore on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreEventDataStore on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method RestoreEventDataStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreEventDataStore.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $RestoreEventDataStoreResponse = $cloudtrail->RestoreEventDataStore(
      EventDataStore => 'MyEventDataStoreArn',

    );

    # Results:
    my $AdvancedEventSelectors =
      $RestoreEventDataStoreResponse->AdvancedEventSelectors;
    my $BillingMode        = $RestoreEventDataStoreResponse->BillingMode;
    my $CreatedTimestamp   = $RestoreEventDataStoreResponse->CreatedTimestamp;
    my $EventDataStoreArn  = $RestoreEventDataStoreResponse->EventDataStoreArn;
    my $KmsKeyId           = $RestoreEventDataStoreResponse->KmsKeyId;
    my $MultiRegionEnabled = $RestoreEventDataStoreResponse->MultiRegionEnabled;
    my $Name               = $RestoreEventDataStoreResponse->Name;
    my $OrganizationEnabled =
      $RestoreEventDataStoreResponse->OrganizationEnabled;
    my $RetentionPeriod = $RestoreEventDataStoreResponse->RetentionPeriod;
    my $Status          = $RestoreEventDataStoreResponse->Status;
    my $TerminationProtectionEnabled =
      $RestoreEventDataStoreResponse->TerminationProtectionEnabled;
    my $UpdatedTimestamp = $RestoreEventDataStoreResponse->UpdatedTimestamp;

    # Returns a L<Paws::CloudTrail::RestoreEventDataStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/RestoreEventDataStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventDataStore => Str

The ARN (or the ID suffix of the ARN) of the event data store that you
want to restore.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreEventDataStore in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::S3Control::UpdateStorageLensGroup;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Name => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);
  has StorageLensGroup => (is => 'ro', isa => 'Paws::S3Control::StorageLensGroup', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStorageLensGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/storagelensgroup/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'UpdateStorageLensGroupRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://awss3control.amazonaws.com/doc/2018-08-20/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::UpdateStorageLensGroup - Arguments for method UpdateStorageLensGroup on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStorageLensGroup on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method UpdateStorageLensGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStorageLensGroup.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    $s3 -control->UpdateStorageLensGroup(
      AccountId        => 'MyAccountId',
      Name             => 'MyStorageLensGroupName',
      StorageLensGroup => {
        Filter => {
          And => {
            MatchAnyPrefix => [ 'MyPrefix', ... ],    # OPTIONAL
            MatchAnySuffix => [ 'MySuffix', ... ],    # OPTIONAL
            MatchAnyTag    => [
              {
                Key   => 'MyTagKeyString',      # min: 1, max: 128
                Value => 'MyTagValueString',    # max: 256

              },
              ...
            ],    # OPTIONAL
            MatchObjectAge => {
              DaysGreaterThan => 1,    # OPTIONAL
              DaysLessThan    => 1,    # OPTIONAL
            },    # OPTIONAL
            MatchObjectSize => {
              BytesGreaterThan => 1,    # OPTIONAL
              BytesLessThan    => 1,    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          MatchAnyPrefix => [ 'MyPrefix', ... ],    # OPTIONAL
          MatchAnySuffix => [ 'MySuffix', ... ],    # OPTIONAL
          MatchAnyTag    => [
            {
              Key   => 'MyTagKeyString',      # min: 1, max: 128
              Value => 'MyTagValueString',    # max: 256

            },
            ...
          ],    # OPTIONAL
          MatchObjectAge => {
            DaysGreaterThan => 1,    # OPTIONAL
            DaysLessThan    => 1,    # OPTIONAL
          },    # OPTIONAL
          MatchObjectSize => {
            BytesGreaterThan => 1,    # OPTIONAL
            BytesLessThan    => 1,    # OPTIONAL
          },    # OPTIONAL
          Or => {
            MatchAnyPrefix => [ 'MyPrefix', ... ],    # OPTIONAL
            MatchAnySuffix => [ 'MySuffix', ... ],    # OPTIONAL
            MatchAnyTag    => [
              {
                Key   => 'MyTagKeyString',      # min: 1, max: 128
                Value => 'MyTagValueString',    # max: 256

              },
              ...
            ],    # OPTIONAL
            MatchObjectAge => {
              DaysGreaterThan => 1,    # OPTIONAL
              DaysLessThan    => 1,    # OPTIONAL
            },    # OPTIONAL
            MatchObjectSize => {
              BytesGreaterThan => 1,    # OPTIONAL
              BytesLessThan    => 1,    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        Name                => 'MyStorageLensGroupName',    # min: 1, max: 64
        StorageLensGroupArn =>
          'MyStorageLensGroupArn',    # min: 4, max: 1024; OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/UpdateStorageLensGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID of the Storage Lens group owner.



=head2 B<REQUIRED> Name => Str

The name of the Storage Lens group that you want to update.



=head2 B<REQUIRED> StorageLensGroup => L<Paws::S3Control::StorageLensGroup>

The JSON file that contains the Storage Lens group configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStorageLensGroup in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


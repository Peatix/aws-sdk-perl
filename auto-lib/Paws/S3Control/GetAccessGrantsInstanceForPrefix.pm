
package Paws::S3Control::GetAccessGrantsInstanceForPrefix;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has S3Prefix => (is => 'ro', isa => 'Str', query_name => 's3prefix', traits => ['ParamInQuery'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccessGrantsInstanceForPrefix');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accessgrantsinstance/prefix');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::GetAccessGrantsInstanceForPrefixResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetAccessGrantsInstanceForPrefix - Arguments for method GetAccessGrantsInstanceForPrefix on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccessGrantsInstanceForPrefix on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method GetAccessGrantsInstanceForPrefix.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccessGrantsInstanceForPrefix.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $GetAccessGrantsInstanceForPrefixResult =
      $s3 -control->GetAccessGrantsInstanceForPrefix(
      AccountId => 'MyAccountId',
      S3Prefix  => 'MyS3Prefix',

      );

    # Results:
    my $AccessGrantsInstanceArn =
      $GetAccessGrantsInstanceForPrefixResult->AccessGrantsInstanceArn;
    my $AccessGrantsInstanceId =
      $GetAccessGrantsInstanceForPrefixResult->AccessGrantsInstanceId;

  # Returns a L<Paws::S3Control::GetAccessGrantsInstanceForPrefixResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/GetAccessGrantsInstanceForPrefix>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The ID of the Amazon Web Services account that is making this request.



=head2 B<REQUIRED> S3Prefix => Str

The S3 prefix of the access grants that you would like to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccessGrantsInstanceForPrefix in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


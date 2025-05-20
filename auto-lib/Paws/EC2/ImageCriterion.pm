package Paws::EC2::ImageCriterion;
  use Moose;
  has ImageProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'imageProviderSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImageCriterion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ImageCriterion object:

  $service_obj->Method(Att1 => { ImageProviders => $value, ..., ImageProviders => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ImageCriterion object:

  $result = $service_obj->Method(...);
  $result->Att1->ImageProviders

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ImageProviders => ArrayRef[Str|Undef]

A list of AMI providers whose AMIs are discoverable and useable in the
account. Up to a total of 200 values can be specified.

Possible values:

C<amazon>: Allow AMIs created by Amazon Web Services.

C<aws-marketplace>: Allow AMIs created by verified providers in the
Amazon Web Services Marketplace.

C<aws-backup-vault>: Allow AMIs created by Amazon Web Services Backup.

12-digit account ID: Allow AMIs created by this account. One or more
account IDs can be specified.

C<none>: Allow AMIs created by your own account only.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
